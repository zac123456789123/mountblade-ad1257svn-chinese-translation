@echo off
rem Judge if it is now English version
if not exist ..\..\Textures\font.dds.en ( goto break ) else ( goto continue )

:break
echo It is English version now! I'll run convert script first.
echo Ŀǰ��Ӣ�İ汾���ֿ⣡��������convert�ű��л������ġ�
echo --------------------------------------
@echo.
call convert_��Ӣ������ת��.bat

:continue
rem Judge the current font version
if exist ..\..\Textures\font.dds ( goto hand2norm ) else ( goto norm2hand )

:hand2norm
echo Now it is handwriting style, change it? Close the window to exit.
echo Ŀǰ����Ϊ��д�壬ȷ���л��밴�������ȡ����رձ����ڡ�
pause
echo Ready to convert Chinese fonts to normal one
echo ׼������������ת��Ϊ����
echo --------------------------------------
@echo on
del ..\..\Data\font_data.xml ..\..\Textures\font.dds
@echo off
goto eof

:norm2hand
echo Now it is MB standard style, change it? Close the window to exit.
echo Ŀǰ����Ϊ���壬ȷ���л��밴�������ȡ����رձ����ڡ�
pause
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
echo Convertion done successfully, Have joy! Press any key to continue.
echo ת���ɹ�������ף����Ϸ��죡���������������
@echo.
echo ������Ϸ��������������뿳ɱ����վ-AD1257ר��
echo http://bbs.mountblade.com.cn/forumdisplay.php?fid=92
@echo.
pause