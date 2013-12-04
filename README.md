RFLoader
========

RFLoader provides a loading animation.

You can customize the Animated Loader color (Provide a UIColor) and also you can choose from 3 different animations. You can also provide an image name and animate that image as a loader.  


## How To Get Started

1. Download RFLoader
2. #import "RFLoader.h"
3. Create an instance of RFLoader:

    RFLoader *customLoader = [[RFLoader alloc] init];
    
4.  [customLoader showLoaderWithColor:[UIColor redColor] andAnimation:LoaderMix andImage:nil onView:self.view];
5.  If you prefer to use an image: [customLoader showLoaderWithColor:[UIColor redColor] andAnimation:LoaderMix andImage:@"icon.png" onView:self.view];
6.  To remove Loader: 
        
    [customLoader removeLoader];
or
    [customLoader removeLoaderWithSuccess:YES];
or
    [customLoader removeLoaderWithSuccess:NO];

![Animated Loader ](http://i.imgur.com/eSRa9Ox.png)


Created By
==========

Ricardo Funk ([@rfunk82](http://www.twitter.com/rfunk82))

License
=======

> This is licensed under an MIT License:

> Copyright (c) 2013 Ricardo Funk

> Permission is hereby granted, free of charge, to any person obtaining a
copy of this software and associated documentation files (the "Software"),
to deal in the Software without restriction, including without limitation
the rights to use, copy, modify, merge, publish, distribute, sublicense,
and/or sell copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following conditions:

> The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

> THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
DEALINGS IN THE SOFTWARE.
