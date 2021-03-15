# Set up the node structure >> probably in the node class?

def dfs(root, target)
    # BASE CASE
    # if root.val == target
    # Yes? Return root

    # INDUCTIVE STEP
    # No? Call dfs on each child of the root
    # Next: If res of recursive call is NOT nil, then return the node
    # Implicit nil (bc target was not found)
end

# SETUP
# target == d

# Stack frame 1
    # root = a
    # a == d?
    # N! Call dfs() on a's children... 
    # dfs(b, target)

# Stack frame 2
    # root = b
    # us b == d?
    # No, so call dfs on b's chidlren

# Stack frame etc ect

# Each stack fram is PAUSED until we get a resolution 

# Question? 
# Will we need to make two recursive calls?
# If binary, probably not
# Poly tree node yes most likely
# There are ways to check each node as you go down, you can also go straight to the bottom and then check