#Variables
i = 10 # int

j = 12.3  # float

k = "Srikanth"  # string

l = True
m = False

print("\n----------\n")

print("i", i, type(i))
print("j", j, type(j))
print("k", k, type(k))
print("l", l, type(l))
print("m", m, type(m))

# COLLECTION DATA TYPES

list_a = [3, 5, 7, 8]

dict_b = {
    "vinay": "31",
    "srikanth": "30",
    "venky": "16",
}
print("\n-----------\n")
print(f"list_a: {list_a}")
print(f"dict_b: {dict_b}")

print(f"age of a member: {dict_b['vinay']}")
print("\n-----------\n")

dict_eg2 = {
    "age" : {
        "vinay": "31",
        "srikanth": "30",
        "venky": "16",
    },
    "occcupation" : {
        "vinay": "sr. developer",
        "srikanth": "sr. automation engg",
        "venky": "sr. railway coach",
    }
}

print(f"venky occupation: {dict_eg2['occcupation']['venky']}")

print("\n-----------\n")

#FUNCTION Example 01

def example_function():
    # Function body starts
    data = "This needs right identation"
    print("........... Function body start here..")
    print(data)
    ab = 10
    bc = 23.4

    result = ab + bc
    print(f"ab + bc result: {result}")
    print("........... Function body ends here!!")


example_function()

#FUNCTION Example 02

print("\n-----------\n")

def example_function2(a, b, c):
    print("We are in this function: 'example_function2()'\n")

    print(f"a = {a}, b = {b}, c = {c}\n")
    print("result of (a + b) * c = " , (a + b) * c)

example_function2(3, 4, 5)


print("\n-----------\n")

#FUNCTION Example 03 - list argument

print("\n-----------\n")

def example_function3(list_var):
    for i in list_var:
        print(i)
    print("....")
 
x = [23, 7, 8, 10, 12]

example_function3(x)

