class brewcask {
  require homebrew

  homebrew::tap { 'isamuelson/homebrew-cask': }

  package { 'brew-cask':
    require => Homebrew::Tap['isamuelson/homebrew-cask']
  }
}
