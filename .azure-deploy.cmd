@ECHO ON

REM Install Hugo if it's not isntalled
pushd D:\home\site\deployment\tools
if not exist Hugo md Hugo 
    cd Hugo 
    if exist bin goto build
        md bin 
        cd bin 
        :install 
        curl -o hugo0207.zip -L https://github.com/spf13/hugo/releases/download/v0.38.2/hugo_0.38.2_Windows-64bit.zip
echo Installing Hugo...
SetLocal DisableDelayedExpansion & d:\7zip\7za x hugo0207.zip


REM Generate Hugo static site from source on GitHub
:build
popd
call D:\home\site\deployments\tools\hugo\bin\hugo -d D:\home\site\wwwroot
echo Hugo build finished successfully.
