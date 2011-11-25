@echo off

rem Judge the current language version
if exist ..\..\Textures\font.dds.en ( goto cn2en ) else ( goto en2cn )

:cn2en
echo Now it is Chinese version, change it? Close the window to exit.
echo Ŀǰ���w���������w���_�J�ГQՈ�������I��ȡ��Ո�P�]�����ڡ�
pause
echo Ready to convert Chinese fonts back to English
echo �ʂ䌢�������w��Q��Ӣ�����w
echo --------------------------------------
@echo on
rename ..\..\Data\font_data.xml.en font_data.xml
rename ..\..\Textures\font.dds.en font.dds
@echo off
goto eof

:en2cn
echo Now it is English version, change it? Close the window to exit.
echo Ŀǰ���w��Ӣ�����w���_�J�ГQՈ�������I��ȡ��Ո�P�]�����ڡ�
pause
echo Ready to convert English fonts back to Chinese
echo �ʂ䌢Ӣ�����w��Q���������w
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
echo ��Q�ɹ����w�Rף���[����죡Ո�c�������I�^�m��
@echo.
echo �����[��Ԕ��Ո�L���T�R�c��������վ-AD1257���^
echo http://bbs.mountblade.com.cn/forumdisplay.php?fid=92
@echo.
pause