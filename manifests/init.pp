class brewcask {
  require homebrew

  homebrew::tap { 'phinze/homebrew-cask': }

  package { 'brew-cask':
    require => Homebrew::Tap['phinze/homebrew-cask']
    Exec { environment => [ "HOMEBREW_CASK_OPTS =--appdir=/Applications --/opt/boxen/homebrew/Caskroom" ] }
  }
}
