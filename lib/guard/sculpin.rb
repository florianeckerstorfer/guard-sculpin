require 'guard'
require 'guard/guard'

module Guard
    class Sculpin < Guard

        VERSION = '0.2.0'

        DEFAULT_OPTIONS = {
            :binary      => 'vendor/bin/sculpin',
            :env         => 'dev',
            :project_dir => '.'
        }

        def initialize(watchers = [], options = {})
          defaults = DEFAULT_OPTIONS.clone
          @options = defaults.merge(options)
          super(watchers, @options)
        end

        def run_on_changes(paths)
            @options[:binary] = File.expand_path @options[:binary]
            paths.each do |path|
                path = File.expand_path path
                # Dir.chdir(@options[:path]) do
                results = `#{@options[:binary]} generate --env=#{@options[:env]} --project-dir=#{@options[:project_dir]}`
                if $?.to_i > 0 then
                    ::Guard::Notifier.notify(results, :title => 'Sculpin', :image => :failed)
                    puts results
                else
                    ::Guard::Notifier.notify('Generated Sculpin site', :title => 'Sculpin', :image => :success)
                    puts 'Generated Sculpin site'
                end
                # end
            end
        end
    end
end
