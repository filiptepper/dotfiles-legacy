task :install do
  # (Dir["*"] + Dir[".*"] - [".", "..", "Rakefile", "LICENSE", "README.rdoc", ".git"]).each do |dotfile|
  (Dir["zsh*"]).each do |dotfile|
    `ln -nsf #{File.expand_path dotfile} ~/.#{dotfile}`
  end

  `chsh -s /bin/zsh`
end

task :default => :install