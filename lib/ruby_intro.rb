# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  num = 0
  arr.each { |a| num+=a }
  ret = num
end

def max_2_sum arr
    if arr.length == 0
        ret = 0
    elsif arr.length == 1
        ret = arr[0]
    elsif arr.length > 1
        m1 = arr[0]
        arr.each{ |a| if a > m1 then m1 = a end}
        i = 0
        arr.each{ if arr[i] == m1 then arr.delete_at(i) ; break end}
        m2 = arr[0]
        arr.each{ |b| if b > m2 then m2 = b end}
        if arr.length == 1 then m1 = 0 end
        ret = m1 + m2
    end    
end

def sum_to_n? arr, n
    if arr.length < 2
        ret = false
    else
        t = 0
        arr.each{|a| a = arr[0]; arr.delete_at(0) ; arr.each{ |b| if a+b == n then t = 1 end}}
        if t == 1
            ret = true
        else 
            ret = false
        end
    end
end

# Part 2

def hello(name)
    str = "Hello, "
    str.concat(name)
end

def starts_with_consonant? s
    if s.length > 0 && s[0] =~ /[[:alpha:]]/
        arr = ['a','A','e','E','i','I','o','O','u','U']
        t = 0
        arr.each{ |a| if a == s[0] then t = 1 end}
        if t == 1 then ret = false else ret = true end
    else
        ret = false
    end
end

def binary_multiple_of_4? s
    t=0
    if s.length == 0 then t = 1 end
    i = 0
    (s.length-1).times{ if s[i]  =~ /[[:alpha:]]/ then  t = 1 ; i = i + 1; ret = false end}
    if t == 0
        if s.to_i(10) % 4 == 0 then ret = true else ret = false end
    end
end

# Part 3

class BookInStock
    def initialize(isbn, price)
        if isbn.length > 0
            @isbn     = isbn
        else 
             raise ArgumentError.new("isbn must not be empty string")
        end
        if price > 0 
            @price   = price
        else 
            raise ArgumentError.new("price must be greater than 0")
        end
    end
    def isbn
        @isbn
    end
    def isbn=(isbn)
        @isbn = isbn
    end
     def price
        @price
    end
    def price=(price)
        @price = price
    end
    def price_as_string
        str = price.to_s
        if(str[str.length-3] == ".")
            return "$" + str
        elsif(str[str.length-2] == ".")
            return "$" + str + "0"
         else
            return "$" + str + ".00"
        end
    end
end
