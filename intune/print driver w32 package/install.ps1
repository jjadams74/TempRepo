# 8/14/2024 - Intune W32 package for driver install
# Printer Driver Install

# Dell Printer E310dw
$drivername = "Dell Printer E310dw"
c:\windows\sysnative\pnputil.exe /add-driver ".\e310dw\DLOHL13A.inf" /install
Add-PrinterDriver -Name $drivername

# Brother Brother HL-L2370DW series
$drivername2 = "Brother HL-L2370DW series"
c:\windows\sysnative\pnputil.exe /add-driver ".\hl-2370dw\BROHL17A.inf" /install
Add-PrinterDriver -name $drivername2

# Dell Printer MFP 4101 series
$drivername3 = "HP LaserJet Pro MFP 4101 4102 4103 4104 PCL-6 (V4)"
c:\windows\sysnative\pnputil.exe /add-driver ".\HP_LJ4101-4104_V4\hplo03744_x64.inf" /install
Add-PrinterDriver -name $drivername3

# Xerox B210
$drivername4 = "Xerox B210 Printer"
c:\windows\sysnative\pnputil.exe /add-driver ".\xerox_b210\sxk6m.inf" /install
Add-PrinterDriver -name $drivername4

#Xerox B230
$drivername5 = "Xerox B230 Printer V4 PCL6"
c:\windows\sysnative\pnputil.exe /add-driver ".\xerox_b230\Xerox_B225_B230_B235_PCL6.inf" /install
Add-PrinterDriver -name $drivername5

#Xerox B310
$drivername6 = "Xerox B310 Printer V4 PCL6"
c:\windows\sysnative\pnputil.exe /add-driver ".\xerox_b310\Xerox_B305_B310_B315_PCL6.inf" /install
Add-PrinterDriver -name $drivername6