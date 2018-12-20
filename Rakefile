task :install do
  (Dir['*'] + Dir['.*'] - ['.', '..', 'Rakefile', 'LICENSE', 'README.rdoc', '.git', 'etc', '.gitmodules']).each do |dotfile|
    `ln -nsf #{File.expand_path dotfile} ~/.#{dotfile}`
  end
end

task :default => :install
