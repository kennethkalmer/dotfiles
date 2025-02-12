# frozen_string_literal: true

NON_DOT_DIRECTORIES = %w[bin].freeze

desc 'Install all the symlinks'
task :install do
  sources = File.expand_path(__dir__)
  matches = Dir["#{sources}/**/*.symlink"]
  matches.each do |source|
    name = source.sub("#{sources}/", '').sub(/\.symlink$/, '')
    root = name.split('/').first
    dot  = NON_DOT_DIRECTORIES.include?(root) ? '' : '.'
    dest = File.expand_path("~/#{dot}#{name}")

    puts "Linking #{source} => #{dest}"

    begin
      FileUtils.mkdir_p(File.dirname(dest))
      File.symlink(source, dest)
    rescue Errno::EEXIST
      puts "DESTINATION EXISTS, SKIPPING #{source}"
    end
  end
end

task default: :install
