##################################################
#
#unless os.windows?
  # This is an example test, replace with your own test.
#  describe user('root'), :skip do
#    it { should exist }
#  end
#end

# This is an example test, replace it with your own test.
#describe port(80), :skip do
#  it { should_not be_listening }
#end

###################################################

describe package('httpd') do
  it { should be_installed }
end
