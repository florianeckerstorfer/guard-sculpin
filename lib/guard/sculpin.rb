require 'guard'
require 'guard/guard'

module Guard
    class Sculpin < Guard

        VERSION = '0.0.1'

        DEFAULT_OPTIONS = {
        }

        def initialize(watchers = [], options = {})
          defaults = DEFAULT_OPTIONS.clone
          @options = defaults.merge(options)
          super(watchers, @options)
        end

        def run_on_changes(paths)
            paths.each do |path|
                path = File.expand_path path
                # Dir.chdir(@options[:path]) do
                results = `vendor/bin/sculpin generate`
                if $?.to_i > 0 then
                    ::Guard::Notifier.notify(results, :title => 'Sculpin', :image => :failed)
                    puts results
                end
                # end
            end
        end
    end
end
