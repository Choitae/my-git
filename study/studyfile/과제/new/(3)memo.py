{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 5,
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "없다\n"
     ]
    }
   ],
   "source": [
    "a = [1,4,5,6,7]\n",
    "if 3 in a:\n",
    "    print(\"있다\")\n",
    "else:\n",
    "    print(\"없다\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 23,
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "저자 : 홍길동\n",
      "출판사 : 지구출판사\n",
      "유형:PDF\n"
     ]
    }
   ],
   "source": [
    "class Book :\n",
    "    def __init__(self, author, publish):\n",
    "        self.author = author\n",
    "        self.publish = publish\n",
    "        \n",
    "    def getAuthorInfo(self):\n",
    "        string = '저자 : %s' %self.author\n",
    "        return string\n",
    "    \n",
    "    def getPublishInfo(self):\n",
    "        string = '출판사 : %s' %self.publish\n",
    "        return string\n",
    "class Ebook(Book):\n",
    "    def __init__ (self, author, publish, type):\n",
    "        super().__init__(author,publish)\n",
    "        self.type = type\n",
    "    def getTypeInfo(self):\n",
    "        string = '유형:%s' %self.type\n",
    "        return string\n",
    "book1 = Ebook(\"홍길동\",\"지구출판사\",'PDF')\n",
    "a = Book('홍길동','지구출판사')\n",
    "print(book1.getAuthorInfo())\n",
    "print(book1.getPublishInfo())\n",
    "print(book1.getTypeInfo())"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 24,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "image/png": "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\n",
      "text/plain": [
       "<Figure size 432x288 with 1 Axes>"
      ]
     },
     "metadata": {
      "needs_background": "light"
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "import matplotlib.pyplot as plt\n",
    "\n",
    "plt.plot(['kim','lee','kang'],[85,88,90])\n",
    "\n",
    "plt.title(\"english Score of Three student\")\n",
    "plt.xlabel('Student Name')\n",
    "plt.ylabel('Score')\n",
    "\n",
    "plt.show()"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": []
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Python 3",
   "language": "python",
   "name": "python3"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.6.12"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 4
}
