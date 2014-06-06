class brewcask {
  require homebrew

  homebrew::tap { 'isamuelson/homebrew-cask': }

  package { 'brew-cask':
    require => Homebrew::Tap['isamuelson/homebrew-cask']
    Exec { environment => [ "HOMEBREW_CASK_OPTS =--appdir=/Applications --/opt/boxen/homebrew/Caskroom" ] }
  }
}
