require 'spec_helper'

describe 'web::default' do
  describe command('curl localhost') do
    its(:stdout) { should match (/hello world!/) }
  end
end
