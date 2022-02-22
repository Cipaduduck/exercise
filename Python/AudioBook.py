#This is just simple program to convert pdf to audio

import pyttsx3 as pyt
import PyPDF2 as pdf
book=open('stds.pdf', 'rb')#Choose pdf
reader= pdf.PdfFileReader(book)
pages=reader.numPages
print(pages)
speaker= pyt.init()
page= reader.getPage(25) #Choose Pages
text= page.extractText()
rate = speaker.getProperty('rate')
speaker.setProperty('rate', rate-50)
speaker.save_to_file(text,'test2.mp3')
speaker.runAndWait()
