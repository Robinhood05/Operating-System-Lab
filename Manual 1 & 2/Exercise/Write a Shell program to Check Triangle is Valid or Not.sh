
read -p "Enter the length of side 1: " side1
read -p "Enter the length of side 2: " side2
read -p "Enter the length of side 3: " side3

# Check if the triangle is valid
if [ $((side1 + side2)) -gt $side3 ] && [ $((side1 + side3)) -gt $side2 ] && [ $((side2 + side3)) -gt $side1 ]; then
    echo "Triangle is valid."
else
    echo "Triangle is not valid."
fi
