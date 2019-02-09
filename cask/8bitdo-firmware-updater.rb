cask '8bitdo-firmware-updater' do
  version '1.0.7'
  sha256 'a8e4200c19c8fc3b43fdb6150af1af6a5b2d84c2094c529622a71fef3389d9d9'

  url "http://tools.8bitdo.com/8BitdoFirmwareUpdater/8BitDoFirmwareUpdaterV#{version}.zip"
  appcast 'http://tools.8bitdo.com/8BitdoFirmwareUpdater/appcast.xml'
  name '8BitDo Firmware Updater'
  homepage 'http://8bitdo.com/'

  app '8BitDo Firmware Updater.app'
end
