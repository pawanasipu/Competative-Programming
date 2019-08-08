#define SZ (int)(sqrt(N) + 1)

struct data
{
    int l, r, ind;
} queries[N];



bool comp(struct data &d1, struct data &d2)
{
    int b1 = d1.l / SZ;
    int b2 = d2.l / SZ;
    if(b1 != b2)
        return b1 < b2;
    else
        return (b1 & 1) ? d1.r < d2.r : d1.r > d2.r;
}

void mo()
{
    sort(queries+1, queries+q+1, comp);

    int l = 1, r = 0, res = 0;

    for(int i=1;i<=q;i++)
    {
        while(l < queries[i].l)
        {
            // code
            l++;
        }
        while(l > queries[i].l)
        {
            // code
            l--;
        }
        while(r < queries[i].r)
        {
            // code
            r++;
        }
        while(r > queries[i].r)
        {
            // code
            r--;
        }

        ans[queries[i].ind] = res;
    }
}
