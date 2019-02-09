cask 'paragon-camptune' do
  version :latest
  sha256 :no_check # required as upstream package is updated in-place

  url 'http://dl.paragon-software.com/demo/camptune_demo_u.dmg'
  name 'Paragon CampTune'
  homepage 'https://www.paragon-software.com/home/camptune/'
  app 'Paragon CampTune.app'
end


  installer manual: "Install Paragon NTFS for Mac #{version}.app"

  uninstall kext:      'com.paragon-software.filesystems.ntfs',
            launchctl: 'com.paragon-software.ntfs*',
            pkgutil:   'com.paragon-software.pkg.ntfs',
            quit:      'com.paragon-software.ntfs*',
            signal:    [
                         ['KILL', 'com.paragon-software.ntfs.FSMenuApp'],
                         ['KILL', 'com.paragon-software.ntfs.notification-agent'],
                       ]