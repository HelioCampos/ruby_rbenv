rbenv_system_install 'system'
rbenv_ruby '2.3.4' do
  global true
end

# rbenv_global '2.3.4'

rbenv_gem 'mail' do
  rbenv_version '2.3.4'
  version '2.6.5'
  options '--no-rdoc --no-ri'
end
