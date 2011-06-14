@echo off

rem Judge the current language version
if exist ..\..\Textures\font.dds.en ( goto cn2en ) else ( goto en2cn )

:cn2en
echo Now it is Chinese version, change it? Close the window to exit.
echo Ŀǰ����Ϊ�������壬ȷ���л��밴�������ȡ����رձ����ڡ�
pause
echo Ready to convert Chinese fonts back to English
echo ׼�������������滻��Ӣ������
echo --------------------------------------
@echo on
if exist ..\..\Textures\font.dds ( del ..\..\Data\font_data.xml ..\..\Textures\font.dds )
rename ..\..\Data\font_data.xml.en font_data.xml
rename ..\..\Textures\font.dds.en font.dds
@echo off
goto eof

:en2cn
echo Now it is English version, change it? Close the window to exit.
echo Ŀǰ����ΪӢ�����壬ȷ���л��밴�������ȡ����رձ����ڡ�
pause
echo Ready to convert English fonts back to Chinese (handwriting style)
echo ׼����Ӣ�������滻Ϊ������д��
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
echo �滻�ɹ�������ף����Ϸ��죡���������������
@echo.
echo ������Ϸ��������������뿳ɱ����վ-AD1257ר��
echo http://bbs.mountblade.com.cn/forumdisplay.php?fid=92
@echo.
pause