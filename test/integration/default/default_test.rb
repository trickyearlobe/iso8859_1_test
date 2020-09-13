
describe command("file -i /tmp/iso8859-1.txt") do
  its('stdout') { should match "charset=iso-8859-1" }
end
