{
 "cells": [
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "# random 이용 예제"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "### 난수 (random)\n",
    "\n",
    "파이썬에서 난수(random number)를 사용하기 위해서는 기본적으로 제공되는 random 모듈을 사용한다. random 모듈에서 자주 사용되는 함수는 다음과 같다.\n",
    "\n",
    "- randint(최소, 최대) : 입력 파라미터인 최소부터 최대까지 중 임의의 정수를 리턴한다\n",
    "- random() : 0 부터 1 사이의 부동소수점(float) 숫자를 리턴한다\n",
    "- uniform(최소, 최대) : 입력 파라미터인 최소부터 최대까지 중 임의의 부동소수점(float) 숫자를 리턴한다\n",
    "- randrange(시작,끝[,간격]) : 입력 파라미터인 시작부터 끝값까지 (지정된 간격으로 나열된) 숫자 중 임의의 정수를 리턴한다\n",
    "\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "from random import *\n",
    " \n",
    "i = randint(1, 100)  # 1부터 100 사이의 임의의 정수\n",
    "print(i)\n",
    " \n",
    "f = random()   # 0부터 1 사이의 임의의 float\n",
    "print(f)\n",
    " \n",
    "f = uniform(1.0, 36.5)   # 1부터 36.5 사이의 임의의 float\n",
    "print(f)\n",
    " \n",
    "i = randrange(1, 101, 2) # 1부터 100 사이의 임의의 짝수\n",
    "print(i)\n",
    " \n",
    "i = randrange(10)  # 0부터 9 사이의 임의의 정수\n",
    "print(i)"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "random.choice() 는 원소에서 아무 원소나 하나 뽑아 준다."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "'b'"
      ]
     },
     "execution_count": 5,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "abc = ['e', 'd', 'a', 'c', 'b']\n",
    "random.choice(abc)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "'b'"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "random.choice(abc)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "False"
      ]
     },
     "execution_count": 3,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "random.choice([True, False])"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "True"
      ]
     },
     "execution_count": 4,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "random.choice([True, False])"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### 실습) Guess number"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "사용자가 입력한 숫자가 난수보다 큰지 작은지를 알려주고 계속 추측해서 난수값을 맞추는 프로그램을 작성하라.\n",
    "\n",
    "```\n",
    "1~100 사이 숫자를 맞춰 보세요!\n",
    "------------------------------------------------------------\n",
    "1 ~ 100 사이의 숫자를 입력하세요: 5\n",
    "작은 수를 입력했네요\n",
    "1 ~ 100 사이의 숫자를 입력하세요: 50\n",
    "작은 수를 입력했네요\n",
    "1 ~ 100 사이의 숫자를 입력하세요: 75\n",
    "큰 수를 입력했네요\n",
    "1 ~ 100 사이의 숫자를 입력하세요: 60\n",
    "큰 수를 입력했네요\n",
    "1 ~ 100 사이의 숫자를 입력하세요: 55\n",
    "큰 수를 입력했네요\n",
    "1 ~ 100 사이의 숫자를 입력하세요: 53\n",
    "큰 수를 입력했네요\n",
    "1 ~ 100 사이의 숫자를 입력하세요: 52\n",
    "큰 수를 입력했네요\n",
    "1 ~ 100 사이의 숫자를 입력하세요: 51\n",
    "------------------------------------------------------------\n",
    "8 번만에 정답을 맞췄네요...\n",
    "```"
   ]
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
   "version": "3.8.5"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 4
}
