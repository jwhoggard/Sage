︠010e0d50-b17c-41b5-84ed-fc395c5f9230i︠
%md 
# Introduction to Sage

Sage is an open-source (and free) mathematical software system.  SageMathCloud is a way to use Sage through a web browser, without having to install Sage on your own computer.  We will use Sage in this course to explore some Calculus using software tools.

## Basic Computations

Let's start with an easy calculation.  Below you will see a *Sage cell*, with `2+2` already entered.  Click inside the cell, then hit `Shift-Return` to evaluate the cell and get the result:
︡c599cc0c-8bd3-41d1-8612-91fad239679f︡{"md":"# Introduction to Sage\n\nSage is an open-source (and free) mathematical software system.  SageMathCloud is a way to use Sage through a web browser, without having to install Sage on your own computer.  We will use Sage in this course to explore some Calculus using software tools.\n\n## Basic Computations\n\nLet's start with an easy calculation.  Below you will see a *Sage cell*, with `2+2` already entered.  Click inside the cell, then hit `Shift-Return` to evaluate the cell and get the result:\n"}︡
︠db62b200-0f69-497e-ba5b-c0cdc3211b67︠
2+2
︠b27388bb-d55a-459d-be8d-63cc7f45c219i︠
%md 
(You can also click on a gray line to get a *new* Sage cell in which to enter your own calculation. Try it out!)

As the above example shows, Sage can be used as a calculator.  But Sage is a very *good* calculator, which knows about all sorts of mathematical functions and constants.  To see an example, let's start a new cell by clicking on a gray line below.  Then type `sin(pi/3)` and press [Shift]-[Enter] to see a little of what Sage can do.  
︡33ac8f78-3b5b-404b-aeab-febd06ee41ff︡{"md":"(You can also click on a gray line to get a *new* Sage cell in which to enter your own calculation. Try it out!)\n\nAs the above example shows, Sage can be used as a calculator.  But Sage is a very *good* calculator, which knows about all sorts of mathematical functions and constants.  To see an example, let's start a new cell by clicking on a gray line below.  Then type `sin(pi/3)` and press [Shift]-[Enter] to see a little of what Sage can do.  \n"}︡
︠24c80c0d-562c-4e6d-8e10-12840d9d0284︠
sin(pi/3)
︠bb7c4053-a81f-4fa0-aafa-7cd9bbe94a68i︠
%md  That's really good!  But if you want to see a numerical approximation to the number $\sin(\pi/3)$, you can use the Sage function `n`.  You can also use the symbol `_` to refer to the *last* computation that Sage did.  So if the last thing you computed was `sin(pi/3)` above, you can type `n(_)` to find a numerical approximation.  (If you have entered something else since then, just type `n(sin(pi/3))` in a new cell.)
︡99fa3b3a-bd24-43ec-8820-e2222a2f08ef︡{"md":" That's really good!  But if you want to see a numerical approximation to the number $\\sin(\\pi/3)$, you can use the Sage function `n`.  You can also use the symbol `_` to refer to the *last* computation that Sage did.  So if the last thing you computed was `sin(pi/3)` above, you can type `n(_)` to find a numerical approximation.  (If you have entered something else since then, just type `n(sin(pi/3))` in a new cell.)"}︡
︠fdd9cce3-7979-434c-8f75-5a8315089a66︠
n(_)
︠20b6e6f7-1249-4d97-8fb3-918693cc5928i︠
%md If you want more accuracy, you can add the argument `digits` inside the `n` function, like this:
︡b01bc7fe-7f32-4c06-86c6-98579b919bb7︡{"md":"If you want more accuracy, you can add the argument `digits` inside the `n` function, like this:"}︡
︠968f1533-c006-48b4-b93e-de5a9ef563b0︠
n(sqrt(2), digits=50)
︠0c98db6a-65b5-48fb-b38e-073cb826c9bci︠
%md 
Sage is familiar with many functions you know about.  A few notes about some special ones:

  * The inverse trig functions are written as `arcsin`, `arctan`, etc.
  * The natural logarithm can be written as `ln` or as `log`. If you want a logarithm to another base, such as base 10, specify the base with the `base` argument:  `log(x, base=10)`, for example.
  * The natural exponential function, $e^x$, can be written as `exp(x)`.
︡5c36a837-de46-44e6-a549-d871ed685c88︡{"md":"Sage is familiar with many functions you know about.  A few notes about some special ones:\n\n  * The inverse trig functions are written as `arcsin`, `arctan`, etc.\n  * The natural logarithm can be written as `ln` or as `log`. If you want a logarithm to another base, such as base 10, specify the base with the `base` argument:  `log(x, base=10)`, for example.\n  * The natural exponential function, $e^x$, can be written as `exp(x)`.\n"}︡
︠1e12df54-a0c5-4026-8eb2-3df2f43b5b5csi︠
%md
**Practice** Can you find (to at least six decimal places) the angle which makes $\sin(x)$ equal to 1/3?
︡fe835922-d9b5-4086-a7d4-0a79e862af1d︡{"md":"**Practice** Can you find (to at least six decimal places) the angle which makes $\\sin(x)$ equal to 1/3?\n"}︡
︠a742fc85-954f-4dfd-8d53-1a15cb452d58︠
︡02f91cdf-fa57-4fd1-8944-7d42c6a56641︡{"md":"## Algebra\n\nSage can do symbolic algebra, but you must first declare any variables you want to use.  Let's declare both `x` and `t` to be symbolic variables with the statement below:\n"}︡
︠f3a68067-b97a-4ab2-a9d0-05b2fe7028cd︠
var("x, t")
︠34675c4e-ca7d-4100-87db-984c8615db06i︠
%md Here are a few examples of what Sage can do with algebraic expressions:  (Note in the examples below, multiplication **must** be indicated with a `*`; it cannot be represented by juxtaposition!)
︡6ef3d0e3-2494-4002-99df-e13ec367cd4d︡{"md":"Here are a few examples of what Sage can do with algebraic expressions:  (Note in the examples below, multiplication **must** be indicated with a `*`; it cannot be represented by juxtaposition!)"}︡
︠1bb1b138-94af-43d2-8599-63428dad2a5b︠
expand((x + 5)*(2*x - 1))
︠98f8e250-1385-4f91-87ce-043bcaddce85︠
factor(6*x^3 + 26*x^2 - 20*x)
︠b05ddad1-7fa7-4899-beb6-79e99e8f76fe︠
solve( x^2 + x  == 6, x)
︠cbbcbb96-a487-49e0-b1c3-108d6766ca58︠
p = (x^2 + 3*x + 5)/(x^2 -5*x+6)
︠ba0693ac-4de5-4b05-bcf6-82979b3eeac9︠
p.partial_fraction()
︠c5de58f9-d62b-4f00-a981-a24673cdbdbb︠
︠3561ec8f-a35a-44b5-876a-f747a10850efi︠
%md It is also easy to define a simple function, so that you can reuse it many times, if you wish.  Here's an example of creating a function $f(x) = x^2 + 2$:
︡0578b36e-d16b-4993-9ac6-db59586c10ba︡{"md":"It is also easy to define a simple function, so that you can reuse it many times, if you wish.  Here's an example of creating a function $f(x) = x^2 + 2$:"}︡
︠796e3e9d-447b-40bd-9dec-28d6faa83751︠
f(x) = x^2 + 2
︡43a7469c-cd50-47d7-8699-b18cf4c7ebad︡
︠27e2f578-61c7-417b-ba68-53c2af9f7f6fi︠
%md When you run the cell above, nothing seems to happen, because all it does is define the function.  But now you can use the function $f$, if you wish:
︡20df9598-c5cf-4174-863d-e6a3554360b0︡{"md":"When you run the cell above, nothing seems to happen, because all it does is define the function.  But now you can use the function $f$, if you wish:"}︡
︠a7846dce-594b-43b0-9e67-ada07062da0b︠
f(2)
︠a1b0c032-576c-4fba-ab55-70e24ab64bb8i︠
%md There are *many* other types of algebraic problems that Sage can solve.  See some of the references at the end if you would like to learn more.
︡e131cccc-19f4-4263-99ad-82bcf332469f︡{"md":"There are *many* other types of algebraic problems that Sage can solve.  See some of the references at the end if you would like to learn more."}︡
︠dece9604-c03d-402b-aac0-00e6b24b7345i︠
%md 
## Basic Calculus

Sage can also carry out some basic symbolic calculus.  Here are a few examples:

︡6f425c49-2501-4daa-b35f-bf6734f2babf︡{"md":"## Basic Calculus\n\nSage can also carry out some basic symbolic calculus.  Here are a few examples:\n\n"}︡
︠54b2bd96-1f18-4a15-a95d-62c8ab2536ae︠
var("x")
derivative(3*exp(x^2)+log(x), x)
︠504e14f7-5610-4c12-8db6-f917bcc6e3ed︠
integrate(x^3 + x + 1, x)
︠cb867abf-240a-4dda-a0ed-9855093661bf︠
integrate(x, (x, 0, 1))
︠d1bbcce0-ec27-4428-aceb-38393506dc58︠
taylor(cos(x), x, 0, 7)
︠0ad9f49b-c1b2-4609-b95f-0f4adba0e82b︠
︡e41237a5-9e09-4136-ada9-997d0ec75bae︡{"md":"## Plotting\n\nIt is easy to plot a function in Sage.  Here is an example of plotting the function $f(x) = 3 x^2 + 2 x - 1$ on the interval $[-2, 2]$:\n"}︡
︠d15c1063-f362-45af-afe4-21344abbfee2︠
plot(3*x^2+2*x-1, (x, -4, -1))
︠7afad21f-4e55-4847-b30b-abdf98cf31eai︠
%md Sometimes the graph does not show the sorts of details you would like.  Try the following to plot $\tan(x)$ on $[-\pi, \pi]$:
︡f3a67442-da5e-4b2e-a516-8f915a1a558d︡{"md":"Sometimes the graph does not show the sorts of details you would like.  Try the following to plot $\\tan(x)$ on $[-\\pi, \\pi]$:"}︡
︠a61fdf6c-37ce-4520-9a7f-edd549f5c2d8︠
plot(tan(x), (x, -pi, pi))
︠5ec8ee5c-ce14-47c3-aa6c-39a1accd210di︠
%md The $y$ values get so big that we cannot see much else.  We can add the extra arguments `ymin` and `ymax` to the plot function to fix the window of the plot:
︡9475dbc7-ee87-465c-9bd0-96bb4ad94c7c︡{"md":"The $y$ values get so big that we cannot see much else.  We can add the extra arguments `ymin` and `ymax` to the plot function to fix the window of the plot:"}︡
︠41ca0588-eacc-427b-8e88-8a619972ae5e︠
plot(tan(x), (x, -pi, pi), ymin=-2, ymax = 2)
︠650f694a-9bcb-40d0-ac84-f0191ca956d5is︠
%md By the way, those vertical lines probably look like Sage is plotting the asymptotes.  Actually, it's just the result of Sage "connecting the dots" as it plots the graph.  We can adjust the behavior at these points using the `detect_poles` option:
︡f0394fad-6424-4b72-9149-32a14bb993b9︡{"md":"By the way, those vertical lines probably look like Sage is plotting the asymptotes.  Actually, it's just the result of Sage \"connecting the dots\" as it plots the graph.  We can adjust the behavior at these points using the `detect_poles` option:"}︡
︠ee482318-1eca-4f55-a604-728c8ae01de7︠
plot(tan(x), (x, -pi, pi), ymin=-2, ymax = 2, detect_poles=true)
︠af6086e0-99f8-4232-a6fb-8a19fc5e98b3i︠
%md 
## 3D Plotting

We are more interested in plots of functions of several variables.  Here's how to plot a surface:
︡95461224-a080-4dfb-a5a1-1282d697609b︡{"md":"## 3D Plotting\n\nWe are more interested in plots of functions of several variables.  Here's how to plot a surface:\n"}︡
︠4efb6806-d36d-42c0-9fc7-b7180758548b︠
var("x, y")
plot3d(sin(x*y), (x, 0, 4), (y, 0, 4))
︠a3fdd059-0966-4eff-9a76-2b38ea97a8bdi︠
%md 
A useful trick is to plot an *implicit surface*, where a function is equal to a given value.  Here we can plot a sphere, by plotting where $x^2 + y^2 + z^2 = 1$:
︡ee71821e-ae37-4947-89d7-2de21fbe472e︡{"md":"A useful trick is to plot an *implicit surface*, where a function is equal to a given value.  Here we can plot a sphere, by plotting where $x^2 + y^2 + z^2 = 1$:\n"}︡
︠84a01a4c-a32c-4841-8952-31cad3f9d8d4︠
var("x, y, z")
implicit_plot3d(x^2 + y^2 + z^2, (x, -2, 2), (y, -2, 2), (z, -2, 2), contour = [1])
︠fccfa904-7a89-4f69-8849-53dd3997ab66i︠
%md Sage is also capable of plotting parametric plots in space, using `parametric_plot3d`:
︡40dc53fe-86f2-47df-96f3-73836cb4c2e6︡{"md":"Sage is also capable of plotting parametric plots in space, using `parametric_plot3d`:"}︡
︠7edbcf15-d448-4e3a-a49b-67d302e208d2︠
var("t")
parametric_plot3d((3*cos(t), 3*sin(t), t), (t, 0, 6*pi))
︠a9e57e24-0eee-43ba-9946-caac0343ed48is︠
%md To combine two plots, just add them:
︡31f074b4-10ab-43a6-98ed-451bb8fef2f5︡{"md":"To combine two plots, just add them:"}︡
︠88efc613-741a-47ce-835a-e89fd7dcf952︠
p1 = plot3d(x^2+y^2, (x, -1.2, 1.2), (y, -1.2, 1.2));
p2 = plot3d(1 - y^2, (x, -1.2, 1.2), (y, -1.2, 1.2), color="green");
p1+p2
︡ab8dcdc8-09eb-4183-a7dc-2dbc377ae1d5︡{"file":{"uuid":"c603d463-8611-4878-8a28-54b22ee1710f","filename":"c603d463-8611-4878-8a28-54b22ee1710f.sage3d"}}︡{"html":"<div align='center'></div>"}︡
︠91dbbe97-0fe2-4e37-bed6-9151189b8fabis︠
%md 
## Vectors and Matrices

Sage is familiar with vectors and vector operations.  You can define a vector as a list of numbers using the `vector` function:
︡e8061175-d093-4072-b548-6ef659912d95︡{"md":"## Vectors and Matrices\n\nSage is familiar with vectors and vector operations.  You can define a vector as a list of numbers using the `vector` function:\n"}︡
︠e2bd10b2-8616-4f30-8ccb-89f8af61ffdf︠
v1 = vector([1, 2, 3]); v2 = vector([3, -1, 1])
︡c94093c4-6e43-47d6-aefb-8dd463e94787︡
︠302dda75-5278-43b5-8f61-baba7e28c5a5i︠
%md
Sage understands common operations, and even knows about dot and cross products:
︡64044314-dfd4-43b1-ac1e-9aa0ddf8e253︡{"md":"Sage understands common operations, and even knows about dot and cross products:\n"}︡
︠7d017f9d-8e8e-4ce2-b152-3c5a1d05505a︠
v1 + 2*v2
v1.cross_product(v2)
v1.dot_product(v2)
v1 * v2
︠9161ce03-3668-4665-9896-0c25d42531cais︠
%md
Matrices are created using the matrix command, but you need to tell sage what kinds of entries the matrix should have.  We will use rational numbers, indicated by ``QQ``.  Then we enter the matrix as a list of lists.  We define a matrix ``m``
︡0e2cab36-1837-45ce-9b72-a4ab9a99eee5︡{"md":"Matrices are created using the matrix command, but you need to tell sage what kinds of entries the matrix should have.  We will use rational numbers, indicated by ``QQ``.  Then we enter the matrix as a list of lists.  We define a matrix ``m``\n"}︡
︠65df599a-ea3e-4e56-8a62-72b6b7a11d35︠
m = matrix(QQ, [[3, 2, 0], [1, -1, 1], [-1, 1, -5]]); show(m)
︠7ec58fee-d247-4917-aa50-c5294b57f5b5︠
%md
Sage recognizes many operations we can perform on matrices. act_on_polynomial Here are some you might be familiar with:
︠44d55b69-263c-472e-8bcc-c47d1006e240︠
m.rref()
︠4b51815d-9a09-4001-8d37-c25d2a68e2a9︠
m.eigenvalues()
︠317d53fd-0c19-4f62-a613-3377ae50a2e7︠
︡05009d64-98dc-47e2-8b76-a12733ac1752︡{"md":"## Writing Text\n\nFinally, to write your responses to some Sage problems, you will want to be able to put in some text explanations.  The easiest way to do this is using *markdown*, a simple language for formatted text.  To start a markdown cell, put `%md` as the first text in the cell.  Then you can type any text you want, and when you evaluate that cell, it will mostly just turn in to text.  Here are a few simple formatting commands you can add, if you wish\n\n  * To type *italicized* text, surround the words with an asterisk:  `*italicized*`\n  * To make text **bold**, use two asterisks:  `**bold**`\n  * Trickier:  You can format a polynomial like $f(x) = 3 x^3 - x^2 + 2x + 1$ like this: `$f(x) = 3 x^3 - x^2 + 2x + 1$`\n  \n(That last example is very tricky.  There is an entire language for mathematical typesetting called $\\LaTeX$ which is being used there.  You are not required to use this notation, but you are welcome to try if you wish.) \n\nAll of the text you see in this document is really in a markdown cell.  If you double click on one of those cells, you can see exactly how I created that text, if you are interested.\n"}︡
︠e29555e4-ec1c-4a27-bcf8-e383d8a50249i︠
%md 
## Other References

Here are some useful references if you would like to explore Sage further:

  * The [Official Sage Tutorial](http://doc.sagemath.org/html/en/tutorial/index.html)
  * A lengthy (but very good) [Sage Tutorial](http://www-rohan.sdsu.edu/~mosulliv/Teaching/sdsu-sage-tutorial/index.html) at San Diego State University.
  * Gregory Bard at University of Wisconsin, Stout, has a [page of information about Sage](http://www.gregorybard.com/SAGE.html), including some videos and his new book, *Sage for Undergraduates*.
︡cb862fba-4c87-414e-a481-d0f806f96ba2︡{"md":"## Other References\n\nHere are some useful references if you would like to explore Sage further:\n\n  * The [Official Sage Tutorial](http://doc.sagemath.org/html/en/tutorial/index.html)\n  * A lengthy (but very good) [Sage Tutorial](http://www-rohan.sdsu.edu/~mosulliv/Teaching/sdsu-sage-tutorial/index.html) at San Diego State University.\n  * Gregory Bard at University of Wisconsin, Stout, has a [page of information about Sage](http://www.gregorybard.com/SAGE.html), including some videos and his new book, *Sage for Undergraduates*.\n"}︡
︠453f3f90-8462-40e3-a09b-2ffeb52a362b︠









