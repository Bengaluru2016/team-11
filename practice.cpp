#include <iostream>

using namespace std;
/*
class Complex
{
private:
    double real;
    double imag;

public:
    // Default constructor
    Complex(double r = 0.0, double i = 0.0) { this->real=r; this->imag=i; }

    // A method to compare two Complex numbers
    bool operator== (Complex rhs) {
       return (real == rhs.real && imag == rhs.imag)? true : false;
    }
};*/

int main ()
{
    int t;
    cin>>t;
    int co=0;
    while(t--){
        co++;

    	int c;
    	cin>>c;
    	int n;
    	cin>>n;

    	int a[n];
    	for(int i=0;i<n;i++){
    		cin>>a[i];
		}
		 cout<<"Case #"<<co<<": ";
		for (int i=0;i<n-1;i++){
			for(int j=i+1;j<n;j++){

				if(a[i]+a[j]==c){
					cout<<i+1<<" "<<j+1<<endl;
					break;
				}
			}
		}
	}
}

