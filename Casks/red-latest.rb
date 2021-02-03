cask 'red-latest' do
version :latest
sha256 :no_check

 url "https://static.red-lang.org/dl/auto/mac/red-latest"
 name 'Red Programming Language'
 homepage 'http://www.red-lang.org'

 container type: :naked

 binary "red-latest", target: 'red'

 postflight do
  FileUtils.chmod '+x', "#{staged_path}/red-latest"
 end
end
