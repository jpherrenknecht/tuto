{
 "cells": [
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "<h1> Exemples Numpy"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "<h3>Tri stable de numpy sur une colonne"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 64,
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[[  2   3   6   3   3 358]\n",
      " [  4   3   7   5   5 359]\n",
      " [  4   3   9   4   1   0]\n",
      " [  2   3   3   3   2   1]\n",
      " [  2   3   3   3   1  10]]\n"
     ]
    }
   ],
   "source": [
    "a=np.array([[2,3,6,3,3,358],[4,3,7,5,5,359],[4,3,9,4,1,0],[2,3,3,3,2,1],[2,3,3,3,1,10]])\n",
    "print(a)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 65,
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[[  4   3   9   4   1   0]\n",
      " [  2   3   3   3   2   1]\n",
      " [  2   3   3   3   1  10]\n",
      " [  2   3   6   3   3 358]\n",
      " [  4   3   7   5   5 359]]\n"
     ]
    }
   ],
   "source": [
    "# tri stable sur 5eme colonne\n",
    "a = a[a[:,5].argsort(kind='mergesort')]\n",
    "print (a)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 66,
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[[  2   3   3   3   2   1]\n",
      " [  2   3   3   3   1  10]\n",
      " [  2   3   6   3   3 358]\n",
      " [  4   3   9   4   1   0]\n",
      " [  4   3   7   5   5 359]]\n"
     ]
    }
   ],
   "source": [
    "# Puis sur la premiere (l'ordre est conservé sur la dernière qui avait déjà été triée)\n",
    "a = a[a[:,0].argsort(kind='mergesort')]\n",
    "print (a)\n"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "<h3> Maximum sur une colonne"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 67,
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[3 0 3 4 4 4]\n",
      "Valeur maximum sur colonne 5\n",
      "359\n"
     ]
    }
   ],
   "source": [
    "#ligne des maximums\n",
    "print(np.argmax(a,axis=0))\n",
    "#d'ou valeur max sur la 4eme colonne (axis =0)\n",
    "print ('Valeur maximum sur colonne 5')\n",
    "print (a[np.argmax(a,0)[5],5])\n"
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
   "version": "3.7.4"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 4
}
