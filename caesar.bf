static void CaesarShiftCipher()
        {
            char[] alph = new char[] { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' };
            string str = ReadString();
            Console.WriteLine("Введите шаг");
            int k = Convert.ToInt32(Console.ReadLine());
            char[] charr = str.ToCharArray();
            char[] res = new char[charr.Length];
            for(int i = 0; i < res.Length; i++)
            {
                if(charr[i]==' ')
                {
                    res[i] = ' ';
                }
                else
                {
                    char sym = charr[i];
                    int index = Array.IndexOf(alph, sym);
                    if (k > index)
                    {
                        int n = k - index;
                        res[i] = alph[alph.Length - n];
                    }
                    else
                    {
                        res[i] = alph[index - k];
                    }
                }
            }
