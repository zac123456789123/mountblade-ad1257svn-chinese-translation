@echo off

rem Judge the current language version
if exist ..\..\Textures\font.dds.en ( goto cn2en ) else ( goto en2cn )

:cn2en
echo Now it is Chinese version, change it? Close the window to exit.
echo 目前字体为中文字体，确认切换请按任意键，取消请关闭本窗口。
pause
echo Ready to convert Chinese fonts back to English
echo 准备将中文字体替换回英文字体
echo --------------------------------------
@echo on
if exist ..\..\Textures\font.dds ( del ..\..\Data\font_data.xml ..\..\Textures\font.dds )
rename ..\..\Data\font_data.xml.en font_data.xml
rename ..\..\Textures\font.dds.en font.dds
@echo off
goto eof

:en2cn
echo Now it is English version, change it? Close the window to exit.
echo 目前字体为英文字体，确认切换请按任意键，取消请关闭本窗口。
pause
echo Ready to convert English fonts back to Chinese (handwriting style)
echo 准备将英文字体替换为中文手写体
echo --------------------------------------
@echo on
rename ..\..\Data\font_data.xml font_data.xml.en
rename ..\..\Textures\font.dds font.dds.en
copy font\Data\font_data.xml ..\..\Data\font_data.xml
copy font\Textures\font.dds ..\..\Textures\font.dds
@echo off
goto eof

:eof
@echo.
echo --------------------------------------
echo Conversion done successfully, Have joy! Press any key to continue.
echo 替换成功，飞马祝您游戏愉快！请点击任意键继续。
@echo.
echo 更多游戏详情请访问骑马与砍杀中文站-AD1257专区
echo http://bbs.mountblade.com.cn/forumdisplay.php?fid=92
@echo.
pause