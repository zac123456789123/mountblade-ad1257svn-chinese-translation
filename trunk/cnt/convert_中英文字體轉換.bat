@echo off

rem Judge the current language version
if exist ..\..\Textures\font.dds.en ( goto cn2en ) else ( goto en2cn )

:cn2en
echo Now it is Chinese version, change it? Close the window to exit.
echo 目前字體為中文字體，確認切換請按任意鍵，取消請關閉本窗口。
pause
echo Ready to convert Chinese fonts back to English
echo 準備將中文字體替換回英文字體
echo --------------------------------------
@echo on
rename ..\..\Data\font_data.xml.en font_data.xml
rename ..\..\Textures\font.dds.en font.dds
@echo off
goto eof

:en2cn
echo Now it is English version, change it? Close the window to exit.
echo 目前字體為英文字體，確認切換請按任意鍵，取消請關閉本窗口。
pause
echo Ready to convert English fonts back to Chinese
echo 準備將英文字體替換為中文字體
echo --------------------------------------
@echo on
rename ..\..\Data\font_data.xml font_data.xml.en
rename ..\..\Textures\font.dds font.dds.en
@echo off
goto eof

:eof
@echo.
echo --------------------------------------
echo Conversion done successfully, Have joy! Press any key to continue.
echo 替換成功，飛馬祝您遊戲愉快！請點擊任意鍵繼續。
@echo.
echo 更多遊戲詳情請訪問騎馬與砍殺中文站-AD1257專區
echo http://bbs.mountblade.com.cn/forumdisplay.php?fid=92
@echo.
pause