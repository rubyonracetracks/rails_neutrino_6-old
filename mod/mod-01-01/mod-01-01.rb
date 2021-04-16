#!/usr/bin/ruby
require 'insert_from_file'

puts '-------------------------------------------------'
puts 'Updating the Gemfile to mark the initial contents'
InsertFromFile.add_beginning('mod-01-01-Gemfile_start.txt', 'Gemfile')
InsertFromFile.add_end('mod-01-01-Gemfile_end.txt', 'Gemfile')

# WICHTIG/LEGACY/main: Remove instances of .DS_Store in repository
system ("find . -name '.DS_Store' -type f -delete")

puts '-----------------------------------------------------------'
puts 'Updating .gitignore to mark the initial contents and to add'
puts 'pesky files you do not want committed, such as .DS_Store.'

InsertFromFile.add_beginning('mod-01-01-gitignore_start.txt', '.gitignore')
InsertFromFile.add_end('mod-01-01-gitignore_end.txt', '.gitignore')

# Add MacOS configuration files to .gitignore
# WICHTIG/LEGACY/main: Add .DS_Store to .gitignore

# Add Windows configuration files to .gitignore

# Add Linux configuration files to .gitignore




