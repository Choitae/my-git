import sys
import urllib.request
from PyQt5.QtWidgets import *
from PyQt5.QtCore import *
from PyQt5.QtGui import *
from PyQt5 import uic
from glob import glob
import os 

form_class = uic.loadUiType("pixmapTest.ui")[0]
picture_path = "C:\Users\thcho\my-git\study\studyfile\13주차_mini\사진분류용\PetFinder_All\Adult\"
images = os.listdir(picture_path)

try :
    os.mkdir("./select")
except FileExistsError:
    pass 

class WindowClass(QMainWindow, form_class , QWidget) :
   
    def __init__(self) :
        super().__init__()
        self.setupUi(self)
        self.image_idx = 0 

    def keyPressEvent(self , e):
         
        if e.key()==Qt.Key_S:
            self.qPixmapSaveVar = self.lbl_picture.pixmap()
            self.qPixmapSaveVar.save("./select/"+images[self.image_idx-1])
        elif e.key()==Qt.Key_L:
            self.qPixmapFileVar = QPixmap()
            self.qPixmapFileVar.load(os.path.join(picture_path,images[self.image_idx]))
            self.qPixmapFileVar = self.qPixmapFileVar.scaledToWidth(600)
            self.lbl_picture.setPixmap(self.qPixmapFileVar)
            self.image_idx += 1 
        elif e.key()==Qt.Key_J:
            self.qPixmapFileVar = QPixmap()
            self.qPixmapFileVar.load(os.path.join(picture_path,images[self.image_idx]))
            self.qPixmapFileVar = self.qPixmapFileVar.scaledToWidth(600)
            self.lbl_picture.setPixmap(self.qPixmapFileVar)
            self.image_idx -= 1
        
        else :
            pass
        

if __name__ == "__main__" :
    app = QApplication(sys.argv)
    myWindow = WindowClass()
    myWindow.show()
    app.exec_() 
