#include <iostream>
#include <thread>
#include <unistd.h>

using namespace std;

void threadFunc1() 
{
  usleep(1000000);
}

void threadFunc2(int x)
{
    usleep(1000000);
}

int main() 
{
  thread first (threadFunc1);
  thread second (threadFunc2,0);

  cout << "main, threadFunc1 and threadFunc2 now execute concurrently..." << endl;

  // synchronize threads
  first.join();
  second.join();

  std::cout << "threadFunc1 and threadFunc2 completed.\n";

  return 0;
}