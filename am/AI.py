# Practical No:- :-01 
# Aim: - Implement Bayes Theorem using Python. 
""" Bayes' Theorem provides a way that we can calculate the probability of a piece of data belonging 
to a given class, given our prior knowledge. Bayes' Theorem is stated as: 
P (class |data) = (P(data | class) * P(class)) / P(data) 
Where P (class | data) is the probability of class given the provided data. Naive Bayes is a 
classification algorithm for binary (two-class) and multiclass classification problems. It is called Naive 
Bayes or idiot Bayes because the calculations of the probabilities for each class are simplified to make 
their 
calculations tractable. """
""" Q. The 99% True Positive result for drug users, 99% True Negative result for Non drug User, 0.5% 
people are drug users Then what is the probability that randomly selected individual with a positive 
test is a drug user? 
→Given: """
""" 99% TP result for drug users (+|users) 
99% TN Non drug users (-users) 
0.5% drug users (users) 
Formula:- P(+|users) = P(+|users)*P(users)/P(+) 
P(+)=P(+|users)*P(users)+ P(+| Non users).P(Non users) 
Code:- """
""" def drug_users(n,users_of_drug): 
    m=1-n 
    non_users_of_drug=1-users_of_drug 
    return(n*users_of_drug)/(n*users_of_drug+m*non_users_of_drug) 
print(drug_users(0.99,0.005)) """
# Practical No: 2 
""" Aim: - Implement Conditional Probability and joint probability using Python. 
Conditional Probability: 
The probability of one event given the occurrence of another event is called the conditional 
probability. The conditional probability of one to one or more random variables is referred to as the 
conditional probability distribution. 
For example, the conditional probability of event A given event B is written formally as: 
• P(A given B) 
The "given" is denoted using the pipe "I" operator; for example: 
P(A|B) The conditional probability for events A given event B is calculated as follows: 
• P(A given B) = P(A and B) / P(B) 
Joint Probability: The probability of two (or more) events is called the joint probability. The joint 
probability of two or more random variables is referred to as the joint probability distribution. The 
joint probability for events A and B is calculated as the probability of event A given event B multiplied 
by the probability of event B. This can be stated formally as follows: 
P(A and B) = P(A given B) * P(B) 
The calculation of the joint probability is sometimes called the fundamental rule of probability or the 
"product rule" of probability or the "chain rule" of probability 
(A and B) = P(A given B) * P (B) = P (B given A) * P (A) 
Q.Find out probability of student for stats for given coding. 
Student passing stats exam=0.15 
Student passing coding with stats=0.60 
Student passing coding without stats=0.40 
→P(coding,stats) = P(stats)*P(Stats with Coding) 
Scanned with OKEN Scanner 
Code:- """
# P(coding)=P(coding,stats)+(1-P(stats))+P(coding without stats) 
""" pass_stats=0.15 
pass_codingWstats=0.60 
pass_coding_WOstats=0.40 
p_both=pass_stats*pass_codingWstats 
p_coding=p_both+ ((1-pass_stats)*pass_coding_WOstats) 
stats_given_coding=p_both/p_coding 
print(stats_given_coding) """
# Practical No:- 6 
""" Aim:-Breadth First Search 
Breadth-First Search: 
Breadth-First Search (BFS) is an algorithm used for traversing graphs or trees. Traversing means 
visiting each node of the graph. Breadth-First Search is a recursive algorithm to search all the vertices 
of a graph or a tree. BFS in python can be implemented by using data structures like a dictionary and 
lists. As breadth-first search is the process of traversing each node of the graph, a standard BFS 
algorithm traverses each vertex of the graph into two parts: 
1) Visited 
2) Not Visited. So, the purpose of the algorithm is to visit all the vertex while avoiding cycles. 
The steps of the algorithm work as follow: 
1. Start by putting any one of the graph's vertices at the back of the queue. 
2. Now take the front item of the queue and add it to the visited list. 
3. Create a list of that vertex's adjacent nodes. Add those which are not within the visited list to the 
rear of the queue. 
4. Keep continuing steps two and three till the queue is empty 
Code:- """
""" graph = { 
'5': ['3','7'], 
'3': ['2', '4'], 
'7': ['8'], 
'2': [], 
'4': ['8'], 
'8': [] 
} 
visited = [] 
queue = [] 
def bfs(visited, graph, node): 
 visited.append(node) 
 queue.append(node) 
 while queue: 
 m = queue.pop(0) 
 print (m, end = "") 
 for neighbour in graph[m]: 
 if neighbour not in visited: 
 visited.append(neighbour) 
 queue.append(neighbour) 
# Driver Code 
print("Following is the Breadth-First Search") 
bfs(visited, graph, '5') """
# Practical No:-7 
""" The Depth-First Search is a recursive algorithm that uses the concept of backtracking. It involves 
thorough searches of all the nodes by going ahead if potential, else by backtracking. Here, the word 
backtrack means once you are moving forward and there are not any more nodes along the present 
path, you progress backward on an equivalent path to seek out nodes to traverse. Algorithm: 
• Create a recursive function that takes the index of the node and a visited 
array. 
• Mark the current node as visited and print the node. 
• Traverse all the adjacent and unmarked nodes and call the recursive function with the index of the 
adjacent node. 
Code:- """
""" graph = { 
'5': ['3','7'], 
'3': ['2', '4'], 
'7': ['8'], 
'2': [], 
'4': ['8'], 
'8': [] 
} 
visited = set() 
def dfs(visited, graph, node): 
 if node not in visited: 
 print (node) 
 visited.add(node) 
 for neighbour in graph[node]: 
 dfs(visited, graph, neighbour) 
# Driver Code 
print("Following is the Depth-First Search") 
dfs(visited, graph, '5') """
# Practical No:- 8 
"""Aim: Write a Program to implement parser in natural language processing 
A natural language parser is a program that figures out which group of words go together (as 
"phrases") and which words are the subject or object of a verb. The NLP parser separates a series of 
text into smaller pieces based on the grammar rules. If a sentence that cannot be parsed may have 
grammatical 
errors 
Code: """
""" import nltk
from nltk import* 
text="my name is any"
print(nltk.word_tokenize(text)) 
text="In the simplest terms. Al which stands for artificial intelligence refers to systems." 
print(nltk.sent_tokenize(text)) 
from nltk import pos_tag 
tokens=nltk.word_tokenizetokens-nltk.word_tokenize(text) 
pos_list=pos_tag(tokens) 
print(pos_list) """