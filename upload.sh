#!/bin/bash

git stash
git pull origin master --tags
git stash pop

set -e

VersionString=`grep -E 's.version.*=' XA_Category.podspec`
VersionNumber=`echo $VersionString | cut -d\" -f2`
Major=`echo $VersionNumber | cut -d. -f1`
Minor=`echo $VersionNumber | cut -d. -f2`
Revision=`echo $VersionNumber | cut -d. -f3`

Revision=$(($Revision + 1))

NewVersionNumber=${Major}.${Minor}.${Revision}

LineNumber=`grep -nE 's.version.*=' XA_Category.podspec | cut -d : -f1`
sed -i "" "${LineNumber}s/${VersionNumber}/${NewVersionNumber}/g" XA_Category.podspec

echo "current version is ${VersionNumber}, new version is ${NewVersionNumber}"

git add .
git commit -am ${NewVersionNumber}
git tag ${NewVersionNumber}
git push origin master --tags
cd ~/.cocoapods/repos/ZZASpecs && git pull origin master && cd - && pod repo push ZZASpecs XA_Category.podspec --verbose --allow-warnings --use-libraries

