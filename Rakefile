#!/usr/bin/env rake

desc "Install all the symlinks"
task :install do
  sources = File.expand_path('../', __FILE__)
  matches = Dir["#{sources}/**/*.symlink"]
  matches.each do |source|
    name = File.basename(source, ".symlink")
    dest = File.expand_path("~/.#{name}")

    puts "Linking #{source} => #{dest}"

    begin
      File.symlink( source, dest )
    rescue Errno::EEXIST
      puts "DESTINATION EXISTS, SKIPPING #{source}"
    end
  end
end

task :default => :install
