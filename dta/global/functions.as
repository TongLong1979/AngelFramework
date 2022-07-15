// Add error in array
void addError(const string msg)
{
    g_errors.push_back(msg);
}

// Return array of string
array <string> @getError()
{
    return g_errors;
}

// Show all errors
void showErrors()
{
    for(uint i = 0; i < g_errors.length; ++i)
    {
        print(g_errors[i]);
    }
}