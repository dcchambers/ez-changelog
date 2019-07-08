require 'git'

def say_hello
  puts '                ~ ezcl ~                 '
  puts 'Generating a changelog from your git log.'
end

def get_filename
  print 'Enter CHANGELOG file name: '
  filename = gets.chomp
end

def get_git_path
  print 'Enter path to git repo: '
  path_to_git_repo = gets.chomp
end

def generate_changelog
  say_hello

  changelog_file = File.open(get_filename, "w")
  changelog_file.puts '# CHANGELOG'
  changelog_file.puts #newline
  changelog_file.print '## '
  changelog_file.puts Time.new.strftime("%Y-%m-%d %H:%M:%S")

  g = Git.open(get_git_path)
  g.log.each {|l| changelog_file.puts "- "+l.message }

  changelog_file.close
end

generate_changelog
