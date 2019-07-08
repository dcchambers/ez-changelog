task default: %w[test]

task :test do
  ruby "ezcl.rb < test/inputfile"
  puts File.read("TESTCHANGELOG.md")
end
