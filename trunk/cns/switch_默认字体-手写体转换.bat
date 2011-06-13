@echo off
rem Judge if it is now English version
if not exist ..\..\Textures\font.dds.en ( call convert_��Ӣ������ת��.bat )
rem Judge the current font version
if exist ..\..\Textures\font.dds ( goto hand2norm ) else ( goto norm2hand )

:hand2norm
echo Ready to convert Chinese fonts to normal one
echo ׼������������ת��Ϊ����
echo --------------------------------------
@echo on
del ..\..\Data\font_data.xml ..\..\Textures\font.dds
@echo off
goto eof

:norm2hand
echo Ready to convert Chinese fonts back to hand-written one
echo ׼������������ת������д��
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
echo ת���ɹ�������ף����Ϸ��죡�����س�������
@echo.
echo ������Ϸ��������������뿳ɱ����վ-AD1257ר��
echo http://bbs.mountblade.com.cn/forumdisplay.php?fid=92
@echo.
pause