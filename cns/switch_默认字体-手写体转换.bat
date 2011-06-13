@echo off
rem Judge if it is now English version
if not exist ..\..\Textures\font.dds.en ( call convert_中英文字体转换.bat )
rem Judge the current font version
if exist ..\..\Textures\font.dds ( goto hand2norm ) else ( goto norm2hand )

:hand2norm
echo Ready to convert Chinese fonts to normal one
echo 准备将中文字体转换为宋体
echo --------------------------------------
@echo on
del ..\..\Data\font_data.xml ..\..\Textures\font.dds
@echo off
goto eof

:norm2hand
echo Ready to convert Chinese fonts back to hand-written one
echo 准备将中文字体转换回手写体
echo --------------------------------------
@echo on
copy font\Data\font_data.xml ..\..\Data\font_data.xml
copy font\Textures\font.dds ..\..\Textures\font.dds
@echo off
goto eof

:eof
@echo.
echo --------------------------------------
echo Convertion done successfully, Have joy! Enter to continue.
echo 转换成功，飞马祝您游戏愉快！请点击回车继续。
@echo.
echo 更多游戏详情请访问骑马与砍杀中文站-AD1257专区
echo http://bbs.mountblade.com.cn/forumdisplay.php?fid=92
@echo.
pause