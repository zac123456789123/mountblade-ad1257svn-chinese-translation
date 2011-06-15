@echo off
rem Judge if it is now English version
if not exist ..\..\Textures\font.dds.en ( goto break ) else ( goto continue )

:break
echo It is English version now! I'll run convert script first.
echo 目前是英文版本的字库！将先运行convert脚本切换回中文。
echo --------------------------------------
@echo.
call convert_中英文字体转换.bat

:continue
rem Judge the current font version
if exist ..\..\Textures\font.dds ( goto hand2norm ) else ( goto norm2hand )

:hand2norm
echo Now it is handwriting style, change it? Close the window to exit.
echo 目前字体为手写体，确认切换请按任意键，取消请关闭本窗口。
pause
echo Ready to convert Chinese fonts to normal one
echo 准备将中文字体转换为楷体
echo --------------------------------------
@echo on
del ..\..\Data\font_data.xml ..\..\Textures\font.dds
@echo off
goto eof

:norm2hand
echo Now it is MB standard style, change it? Close the window to exit.
echo 目前字体为楷体，确认切换请按任意键，取消请关闭本窗口。
pause
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
echo Convertion done successfully, Have joy! Press any key to continue.
echo 转换成功，飞马祝您游戏愉快！请点击任意键继续。
@echo.
echo 更多游戏详情请访问骑马与砍杀中文站-AD1257专区
echo http://bbs.mountblade.com.cn/forumdisplay.php?fid=92
@echo.
pause