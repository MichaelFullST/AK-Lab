@echo off
setlocal
chcp 65001

set "directory=C:\Users\mikl-\OneDrive - Факультет прикладної метематики Дніпропетровського національного університету\Рабочий стол\Каталог"
set "new_date=2024-04-27 12:00:00"

for %%F in ("%directory%\*") do (
    echo Зміна дати створення для файлу: %%~nxF
    powershell -Command "(Get-Item '%%F').CreationTime = Get-Date '%new_date%'"
)

echo Дата створення файлів успішно змінена.
pause



