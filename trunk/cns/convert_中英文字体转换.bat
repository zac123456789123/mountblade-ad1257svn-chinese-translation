@echo off
rem Judge if the font has been deleted
if not exist ..\..\Textures\font.dds ( call switch_Ĭ������-��д��ת��.bat )
rem Judge the current language version
if exist ..\..\Textures\font.dds.en ( goto cn2en ) else ( goto en2cn )

:cn2en
echo Ready to convert Chinese fonts back to English
echo ׼�������������滻��Ӣ������
echo --------------------------------------
@echo on
del ..\..\Data\font_data.xml ..\..\Textures\font.dds
rename ..\..\Data\font_data.xml.en font_data.xml
rename ..\..\Textures\font.dds.en font.dds
@echo off
goto eof

:en2cn
echo Ready to convert English fonts back to Chinese
echo ׼����Ӣ�������滻Ϊ��������
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
echo Conversion done successfully, Have joy! Enter to continue.
echo �滻�ɹ�������ף����Ϸ��죡�����س�������
@echo.
echo ������Ϸ��������������뿳ɱ����վ-AD1257ר��
echo http://bbs.mountblade.com.cn/forumdisplay.php?fid=92
@echo.
pause