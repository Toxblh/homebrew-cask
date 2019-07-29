cask 'mtmr' do
  version '0.22'
  sha256 '16779e02ee89a8862c609329cd08d7b1a2028132d0d2a82d2889b312e6b52ad4'

  url "https://mtmr.app/MTMR%20#{version}.dmg"
  appcast 'https://mtmr.app/appcast.xml'
  name 'My TouchBar. My rules'
  homepage 'https://mtmr.app/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'MTMR.app'

  zap trash: '~/Library/Application Support/MTMR'
end
