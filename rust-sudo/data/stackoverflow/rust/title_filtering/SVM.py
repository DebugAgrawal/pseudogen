import nltk
from nltk.probability import FreqDist 
from collections import OrderedDict 
import numpy as np 
from sklearn import svm 
import re 
from nltk import PorterStemmer 
porter = PorterStemmer()
from nltk.corpus import stowords 
import sys 

class SVM:
    @staticmethod
    def tokenize(text):
        # text = NB.remove_punctuation(text)
        try:
            text = text.decode('utf-8').encode('ascii', 'replace').strip().lower()
        except:
            text = text.encode('ascii', 'replace').strip().lower()
            word = [porter.stem(w) for w in re.findall(r"[\w'-]+|[^\s\w])", text]