#!/bin/bash
rm -rf ~/.config/JetBrains/IntelliJIdea*/eval \
&& rm -rf ~/.config/JetBrains/PyCharm*/options/other.xml \
&& sed -i -E 's/<property name=\"evl.*\".*\/>//' ~/.config/JetBrains/IntelliJIdea*/options/other.xml \
&& rm -rf ~/.java/.userPrefs/jetbrains/idea \
&& rm -rf ~/.config/JetBrains/DataGrip*/eval \
&& rm -rf ~/.config/JetBrains/DataGrip*/options/other.xml \
&& rm -rf ~/.java/.userPrefs/jetbrains/datagrip
