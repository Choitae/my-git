{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 8,
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[2, 15, 24, 33, 35, 44]\n",
      "------------------------------\n",
      "[6, 12, 22, 30, 41, 43]\n",
      "------------------------------\n",
      "[2, 12, 16, 16, 24, 40]\n",
      "------------------------------\n",
      "[6, 14, 24, 29, 35, 35]\n",
      "------------------------------\n",
      "[7, 16, 18, 36, 36, 38]\n",
      "------------------------------\n"
     ]
    }
   ],
   "source": [
    "import random\n",
    "\n",
    "for i in range(5):\n",
    "    a = []\n",
    "    for j in range(6):\n",
    "        a.append(random.randrange(1,45,1))\n",
    "    a.sort()\n",
    "    print(a)\n",
    "    print(\"-\"*30)"
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
