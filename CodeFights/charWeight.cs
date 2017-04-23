//https://codefights.com/challenge/XJsMeeEhnPXyNnRdB

string charWeight(string s) 
{
    SortedDictionary<char, int> d = new SortedDictionary<char, int>();
    string f = "";
    foreach (var v in s.ToLower())
    {
        if(d.ContainsKey(v))
            d[v]++;
        else
            d.Add(v, 1);
    }
    var i = d.OrderByDescending(x => x.Value).Select(x => x);
    foreach (var p in i)
    {
        f += string.Format("{0}{1}", p.Key, "{" + p.Value.ToString() + "}");    
    }
    return f;
}
