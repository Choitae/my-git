{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 2,
   "metadata": {},
   "outputs": [
    {
     "name": "stdin",
     "output_type": "stream",
     "text": [
      "입력 :  hello\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "hello\n"
     ]
    }
   ],
   "source": [
    "class TestClass :\n",
    "    def inp_word(self, word):\n",
    "        a = \"\"\n",
    "        a += word\n",
    "        print(a)\n",
    "\n",
    "testclass = TestClass()\n",
    "test = input(\"입력 : \")\n",
    "testclass.inp_word(test)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 46,
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      " 2\n"
     ]
    }
   ],
   "source": [
    "a=31.25\n",
    "b=2 \n",
    "print('{:2d}'.format(b))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 30,
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "1.25\n"
     ]
    }
   ],
   "source": [
    "a=1.25\n",
    "print('%.2f'%a)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 42,
   "metadata": {},
   "outputs": [
    {
     "name": "stdin",
     "output_type": "stream",
     "text": [
      "N 값을 입력해주세요 :  5\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "1 "
     ]
    }
   ],
   "source": [
    "n = int(input(\"N 값을 입력해주세요 : \"))\n",
    "\n",
    "for a in range(1, n +1 ) : \n",
    "    prime_yes = True \n",
    "    for i in range(1, a) : \n",
    "        if a % i == 0  : \n",
    "            prime_yes = False \n",
    "            break  \n",
    "\n",
    "    if (prime_yes) : \n",
    "        print(a, end=' ') "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 47,
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "__main__\n"
     ]
    }
   ],
   "source": [
    "def add(a, b): \n",
    "    return a+b\n",
    "\n",
    "def sub(a, b): \n",
    "    return a-b\n",
    "\n",
    "print(__name__) "
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
