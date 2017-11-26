---


---

<h1 id="physics-3210-classical-mechanics-and-math-methods-ii---spring-2014">Physics 3210: Classical Mechanics And Math Methods II - Spring 2014</h1>
<p>Menu
Index
Lecture Notes
Syllabus
Reading Assignments
Clicker Q’s
Intro to Non-Inertial Mechanics</p>
<h2 id="understanding-buoyancy-in-inertial-referrence-frames.">Understanding Buoyancy in inertial referrence frames.</h2>
<p><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6NAphk-gABbiHFmldd4HxtDKahkx6zZIuU1xwbk9rWdW6HIjo" alt="enter image description here"></p>
<p>We’ve spent a lot of time on Lagrangian mechanics, but today we focus on mechanics in non-inertial reference frames - frames which are accelerating linearly or rotating.</p>
<p>Lagrangian mechanics lets us deal with these frames - we’ve done it repeatedly - but we still must start in an inertial frame of reference before changing to generalized coordinates within the non-inertial frame.</p>
<p>In many cases, it’s easier and more intuitive to start within an accelerating frame. This requires the modification of Newton’s laws to include “fictitious forces” coming form the acceleration. Despite the name, to an observer in an accelerating frame, the forces are completely real and measurable, as you know if you’ve ever been in a car or an airplane.</p>
<p>We’ve already sort of seen an example of this, in the two-body problem. When we reduced to the equivalent 1D problem for the separation (r), we found essentially Newton’s law but with a “centrifugal barrier” contribution from the angular motion of the two objects about the center of mass.</p>
<p>Let’s start with a simple physical example to see how acceleration might look in different frames of reference. Suppose we have a cart containing an air cannon, that shoots a ping pong ball straight up into the air:</p>
<p>If the cart is at rest, then the ball goes up and comes straight back down, and the cart catches it. Of course, you know that the exact same thing happens if the cart is moving with constant speed, (v): the horizontal component of the velocity (v_x) is identical for the ball and the cart, so it catches the ball again.</p>
<p>In the latter case, to an observer on the cart, the cart is in fact stationary, and it’s obvious that the ball will come back to its starting point. The cart observer’s frame of reference is inertial, since the cart has constant speed, so Newton’s laws are just as valid for them.</p>
<p>Now, what if the cart is accelerating forward with constant acceleration (a)? Where does the ball land?</p>
<p>Well, to an outside observer it’s perfectly obvious; the cart accelerates horizontally, the ball does not, so the cart moves out from under the ball and the ball lands behind the cart. But in the frame of reference of an observer on the cart, it looks like the ball is pushed backwards; like there’s some sort of force acting on the ball to accelerate it away from the cart.</p>
<p>Let’s see exactly what’s going on in terms of forces, first in our inertial frame (\mathcal{S}_1), and then in the cart frame (\mathcal{S}_2). In (\mathcal{S}_1), we know that Newton’s laws are valid, i.e.
<span class="katex--display"><span class="katex-display"><span class="katex"><span class="katex-mathml"><math><semantics><mrow><mi mathvariant="normal">Γ</mi><mo>(</mo><mi>z</mi><mo>)</mo><mo>=</mo><msubsup><mo>∫</mo><mn>0</mn><mi mathvariant="normal">∞</mi></msubsup><msup><mi>t</mi><mrow><mi>z</mi><mo>−</mo><mn>1</mn></mrow></msup><msup><mi>e</mi><mrow><mo>−</mo><mi>t</mi></mrow></msup><mi>d</mi><mi>t</mi><mspace width="0.16667em"></mspace><mi mathvariant="normal">.</mi></mrow><annotation encoding="application/x-tex">
\Gamma(z) = \int_0^\infty t^{z-1}e^{-t}dt\,.
</annotation></semantics></math></span><span class="katex-html" aria-hidden="true"><span class="strut" style="height: 1.36em;"></span><span class="strut bottom" style="height: 2.27225em; vertical-align: -0.91225em;"></span><span class="base displaystyle textstyle uncramped"><span class="mord mathrm">Γ</span><span class="mopen">(</span><span class="mord mathit" style="margin-right: 0.04398em;">z</span><span class="mclose">)</span><span class="mrel">=</span><span class="mop"><span class="mop op-symbol large-op" style="margin-right: 0.44445em; top: -0.001125em;">∫</span><span class="msupsub"><span class="vlist"><span class="" style="top: 0.91225em; margin-left: -0.44445em; margin-right: 0.05em;"><span class="fontsize-ensurer reset-size5 size5"><span class="" style="font-size: 0em;">​</span></span><span class="reset-textstyle scriptstyle cramped mtight"><span class="mord mathrm mtight">0</span></span></span><span class="" style="top: -0.974em; margin-right: 0.05em;"><span class="fontsize-ensurer reset-size5 size5"><span class="" style="font-size: 0em;">​</span></span><span class="reset-textstyle scriptstyle uncramped mtight"><span class="mord mathrm mtight">∞</span></span></span><span class="baseline-fix"><span class="fontsize-ensurer reset-size5 size5"><span class="" style="font-size: 0em;">​</span></span>​</span></span></span></span><span class="mord"><span class="mord mathit">t</span><span class="msupsub"><span class="vlist"><span class="" style="top: -0.413em; margin-right: 0.05em;"><span class="fontsize-ensurer reset-size5 size5"><span class="" style="font-size: 0em;">​</span></span><span class="reset-textstyle scriptstyle uncramped mtight"><span class="mord scriptstyle uncramped mtight"><span class="mord mathit mtight" style="margin-right: 0.04398em;">z</span><span class="mbin mtight">−</span><span class="mord mathrm mtight">1</span></span></span></span><span class="baseline-fix"><span class="fontsize-ensurer reset-size5 size5"><span class="" style="font-size: 0em;">​</span></span>​</span></span></span></span><span class="mord"><span class="mord mathit">e</span><span class="msupsub"><span class="vlist"><span class="" style="top: -0.413em; margin-right: 0.05em;"><span class="fontsize-ensurer reset-size5 size5"><span class="" style="font-size: 0em;">​</span></span><span class="reset-textstyle scriptstyle uncramped mtight"><span class="mord scriptstyle uncramped mtight"><span class="mord mtight">−</span><span class="mord mathit mtight">t</span></span></span></span><span class="baseline-fix"><span class="fontsize-ensurer reset-size5 size5"><span class="" style="font-size: 0em;">​</span></span>​</span></span></span></span><span class="mord mathit">d</span><span class="mord mathit">t</span><span class="mord mathrm"><span class="mspace thinspace"></span><span class="mord mathrm">.</span></span></span></span></span></span></span>
<span class="katex--display"><span class="katex-display"><span class="katex"><span class="katex-mathml"><math><semantics><mrow><mi mathvariant="normal">Γ</mi><mo>(</mo><mi>z</mi><mo>)</mo><mo>=</mo><msubsup><mo>∫</mo><mn>0</mn><mi mathvariant="normal">∞</mi></msubsup><msup><mi>t</mi><mrow><mi>z</mi><mo>−</mo><mn>1</mn></mrow></msup><msup><mi>e</mi><mrow><mo>−</mo><mi>t</mi></mrow></msup><mi>d</mi><mi>t</mi><mspace width="0.16667em"></mspace><mi mathvariant="normal">.</mi></mrow><annotation encoding="application/x-tex">
\Gamma(z) = \int_0^\infty t^{z-1}e^{-t}dt\,.
</annotation></semantics></math></span><span class="katex-html" aria-hidden="true"><span class="strut" style="height: 1.36em;"></span><span class="strut bottom" style="height: 2.27225em; vertical-align: -0.91225em;"></span><span class="base displaystyle textstyle uncramped"><span class="mord mathrm">Γ</span><span class="mopen">(</span><span class="mord mathit" style="margin-right: 0.04398em;">z</span><span class="mclose">)</span><span class="mrel">=</span><span class="mop"><span class="mop op-symbol large-op" style="margin-right: 0.44445em; top: -0.001125em;">∫</span><span class="msupsub"><span class="vlist"><span class="" style="top: 0.91225em; margin-left: -0.44445em; margin-right: 0.05em;"><span class="fontsize-ensurer reset-size5 size5"><span class="" style="font-size: 0em;">​</span></span><span class="reset-textstyle scriptstyle cramped mtight"><span class="mord mathrm mtight">0</span></span></span><span class="" style="top: -0.974em; margin-right: 0.05em;"><span class="fontsize-ensurer reset-size5 size5"><span class="" style="font-size: 0em;">​</span></span><span class="reset-textstyle scriptstyle uncramped mtight"><span class="mord mathrm mtight">∞</span></span></span><span class="baseline-fix"><span class="fontsize-ensurer reset-size5 size5"><span class="" style="font-size: 0em;">​</span></span>​</span></span></span></span><span class="mord"><span class="mord mathit">t</span><span class="msupsub"><span class="vlist"><span class="" style="top: -0.413em; margin-right: 0.05em;"><span class="fontsize-ensurer reset-size5 size5"><span class="" style="font-size: 0em;">​</span></span><span class="reset-textstyle scriptstyle uncramped mtight"><span class="mord scriptstyle uncramped mtight"><span class="mord mathit mtight" style="margin-right: 0.04398em;">z</span><span class="mbin mtight">−</span><span class="mord mathrm mtight">1</span></span></span></span><span class="baseline-fix"><span class="fontsize-ensurer reset-size5 size5"><span class="" style="font-size: 0em;">​</span></span>​</span></span></span></span><span class="mord"><span class="mord mathit">e</span><span class="msupsub"><span class="vlist"><span class="" style="top: -0.413em; margin-right: 0.05em;"><span class="fontsize-ensurer reset-size5 size5"><span class="" style="font-size: 0em;">​</span></span><span class="reset-textstyle scriptstyle uncramped mtight"><span class="mord scriptstyle uncramped mtight"><span class="mord mtight">−</span><span class="mord mathit mtight">t</span></span></span></span><span class="baseline-fix"><span class="fontsize-ensurer reset-size5 size5"><span class="" style="font-size: 0em;">​</span></span>​</span></span></span></span><span class="mord mathit">d</span><span class="mord mathit">t</span><span class="mord mathrm"><span class="mspace thinspace"></span><span class="mord mathrm">.</span></span></span></span></span></span></span></p>
<p>is just the net sum of familiar forces; gravity, the force exerted on the ball by the cart’s air cannon, air resistance, etc. We know how to tally them all and solve for the ball’s acceleration.
<img src="https://lh3.googleusercontent.com/ubfANoJFQxmi7trGMGOfztafvlFiDCVm7reK882sVF2zIOo-6Q9iED9Mb8Y7SynE9Bc3Mi6f7NLP-A" alt="enter image description here" title="Food">
Once we’ve solved for the motion of the ball in (\mathcal{S}_1), we know how to describe it in (\mathcal{S}_2) as well. If the difference in velocity between the two frames is (\vec{v}), then the velocity-addition formula applies:
[ \dot{\vec{r_1}} = \dot{\vec{r_2}} + \vec{v}. ]
In words, the velocity of the ball relative to the ground is the velocity relative to the cart, plus the velocity of the cart relative to the ground. Now if there is an acceleration, we can take the derivative of both sides and rearrange to find
[ \ddot{\vec{r_1}} = \ddot{\vec{r_2}} + \vec{a} ]
We can plug this back into Newton’s law above, and we find
[ m \ddot{\vec{r_2}} = \vec{F} - m \vec{a}. ]
This is almost Newton’s second law, but with an extra term due to the acceleration of (\mathcal{S}<em>2). In fact, to the observer in the cart frame, it looks like Newton’s laws do apply, but there is one extra force compared to what the ground observer sees, namely
[ \vec{F}</em>{\textrm{inertial}} = -m \vec{a}. ]
This apparent force is opposite the direction of the acceleration. You’ve probably observed this personally: if you’ve ever been on a bus that brakes suddenly, you know that you get pushed forwards by the sudden stop.</p>
<p>Let’s use this fictitious force to solve a problem form the homework: the pendulum in an accelerating boxcar.</p>
<p>Example: pendulum in an accelerating car</p>
<p>Back to the Newtonian approach! A pendulum of length (\ell) and mass (m) is attached to the ceiling of a boxcar, which is accelerating with constant acceleration (\vec{a}) to the right.</p>
<p>Let’s draw the free-body diagram for the pendulum bob within the accelerating frame. We know that the usual forces of tension and gravity are acting on it, but now we have to include the fictitious inertial force as well:</p>
<p>It’s easy to find the equilibrium position of the pendulum; for the position of the bob (\vec{r}) to remain fixed, all three forces must cancel. Since gravity and the inertial force are both proportional to mass, we can write
[ m\vec{g} - m\vec{a} \equiv m \vec{g_{\textrm{eff}}} ]
defining the effective gravitational force. The tension (T) will be equal and opposite to this sum when the pendulum is hanging down and to the left. Specifically, we can see from the vector sum of (\vec{g}) and (\vec{a}) that the equilbrium angle is:</p>
<p>[ \phi_{\textrm{eq}} = \tan^{-1} (a/g). ]
You’ll notice that this was significantly easier than finding the equilibrium using the Lagrangian on the homework! Moreover, we can keep going to find the frequency of small oscillations. If we displace a small distance from equilibrium, the restoring force is (mg_{\textrm{eff}} \sin (\theta - \theta_{\textrm{eq}})):</p>
<p>which gives the usual equation of motion for a pendulum,
[ ma = m (\ddot{\theta} \ell) = -mg_{\textrm{eff}} \sin (\theta - \theta_{\textrm{eq}}) \ \ddot{\theta’} = -\frac{g_{\textrm{eff}}}{\ell} \sin \theta’ ]
where I’ve replaced (\theta’ = \theta - \theta_{\textrm{eq}}) to make this look exactly like the equation for a simple pendulum. So we can just read off the frequency of small oscillations:
[ \omega = \sqrt{g_{\textrm{eff}}/\ell} = \sqrt{\frac{\sqrt{g^2 + a^2}}{\ell}}. ]</p>
<p>Here’s a fun question: suppose instead of a pendulum, we tie a helium balloon to the bottom of the accelerating car.</p>
<p>Which way does it tilt at equilibrium? You might guess to the left, since the inertial force pushes in that direction. But the balloon is also subject to buoyant force - and the inertial force pushes on the air as well as the balloon! This creates a horizontal pressure gradient, so the normally upwards-pointing buoyant force now points to the right:</p>
<p>The buoyant force overcomes both gravity and the external acceleration, and so the balloon tilts to the right, with the motion of the car.</p>
<p>Now let’s do a much nicer and more powerful application of the inertial force: explaining the ocean tides!</p>
<p>Example: the tides</p>
<p>We’re a little far from the ocean here, but you still probably know that the ocean has high and low tides, and that they occur because of the pull of the moon and the sun on the Earth. We’ll focus on the moon, which contributes the largest effect. We’ll also model the Earth a a solid ball covered entirely in ocean; since the surface is about 70% water this isn’t a bad approximation.</p>
<p>It sounds reasonable that the moon’s gravitational pull would cause a tide as follows: because its gravitational force is stronger near the moon and weaker far away, the ocean will bulge slightly on the side of the Earth facing the moon, and recede on the opposite side.</p>
<p>This turns out to be totally wrong! For one thing, the Earth completes a full rotation once per day, so this would predict one high tide roughly every 24 hours. But we observe two high tides per day! The true effect looks more like this:</p>
<p>Let’s see how this arises quantiatively, using our new framework. The Earth-moon system is in fact an accelerated frame; the acceleration (a) is the centripetal acceleration with which the two bodies orbit about their common center of mass.</p>
<p>Consider the forces on a small mass (m) near the Earth’s surface:</p>
<p>The dominant force acting on (m) is the gravity of the Earth, (F_g = m\vec{g}). We also have the pull of the Moon’s gravity,
[ F_{g,M} = -\frac{GM_M m \hat{d}}{d^2}. ]
Finally, the centripetal acceleration of the Earth comes from the centripetal force, which is the gravitational force between the Earth and the moon, so
[ a_{c} = -\frac{GM_M}{d_0^2} \hat{d_0}. ]
In the inertial frame, then, we can write
[ m \ddot{r} = \vec{F} - m\vec{a} \ = \left( m\vec{g} - \frac{GM_m m}{d^2} \hat{d} + \vec{F_{ng}}\right) + \frac{GM_M m}{d_0^2} \hat{d_0} \ = m \vec{g} + \vec{F_{\textrm{tid}}} + \vec{F_{ng}} ]
where (\vec{F_{ng}}) is other possible non-gravitational forces, and we have defined the tidal force
[ \vec{F_{\textrm{tid}}} = -GM_m m \left( \frac{\hat{d}}{d^2} - \frac{\hat{d_0}}{d_0^2}\right). ]
The tidal force gathers together the total effect of the moon on the motion of the object (m), relative to the Earth.</p>
<p>Clicker Question</p>
<p>What is the direction of the tidal force at point (P)?</p>
<p>A. Left
B. Up
C. Right
D. Down</p>
<p>Answer: A</p>
<p>Here the two vectors (\vec{d}), (\vec{d_0}) point in opposite directions. But (d) is smaller than (d_0), so the first term dominates, and the force is in the (-\hat{d}) direction.</p>
<p>Clicker Question</p>
<p>_What is the direction of the tidal force at point (R)? (Hint: (d_0) is 60 times (R_e).)</p>
<p>A. Left
B. Up
C. Right
D. Down</p>
<p>Answer: D</p>
<p>The (x)-components of the two vectors in the tidal force nearly cancel (since (R_e) is small, so (d \approx d_0).) But only (d) has a (y)-component, and it is directed downwards due to the sign out front.</p>
<p>What about the magnitude of the tides? We can estimate most easily that using conservation of energy. Notice that the tidal force has two components: the gravity of the moon, which is conservative and central, and the inertial force, which is a constant vector in the (x) direction. That means that we can write the tidal force as the gradient of a potential,</p>
<p>[ \vec{F_{\textrm{tid}}} = -\nabla U_{\textrm{tid}} \ U_{\textrm{tid}} = -GM_M m \left( \frac{1}{d} + \frac{x}{d_0^2} \right). ]</p>
<p>Let’s compare the potential energy of two points, § and (Q), corresponding to high and low tide respectively. In addition to the tidal potential, we have to include the Earth’s gravitational potential. If the height difference between high and low tide is (h), then that difference is just
[ U_{eg}§ - U_{eg}(Q) = mgh. ]</p>
<p>For the tidal force, let’s rewrite the potential using the vector (\vec{r}) measuring the distance from the Earth’s center. At point (Q), we have
[ d = \sqrt{d_0^2 + r^2} \approx \sqrt{d_0^2 + R_e^2} ]
and (x=0), so
[ U_{\textrm{tid}}(Q) = -GM_M m \frac{1}{\sqrt{d_0^2 + R_e^2}}. ]
Since (d_0) is about 60 times (R_e), we can series expand for small (R_e/d_0), finding
[ U_{\textrm{tid}}(Q) \approx -\frac{GM_M m}{d_0} \left(1 - \frac{R_e<sup>2}{2d_0</sup>2}\right). ]</p>
<p>On the other hand, at point §, the vectors (\vec{d_0}) and (\vec{r}) point in opposite directions, so (\vec{d} = \vec{d_0} - \vec{r}). The (x) coordinate is (x=-r), so the tidal potential is
[ U_{\textrm{tid}}§ = -GM_M m \left(\frac{1}{d_0 - r} + \frac{-r}{d_0^2} \right) \ \approx -\frac{GM_M m}{d_0} \left( \frac{1}{1 - R_e/d_0} - \frac{R_e}{d_0} \right) \ = -\frac{GM_M m}{d_0} \left( 1 + \frac{R_e}{d_0} + \frac{R_e<sup>2}{d_0</sup>2} + … - \frac{R_e}{d_0} \right) \ \approx -\frac{GM_M m}{d_0} \left(1 + \frac{R_e<sup>2}{d_0</sup>2}\right). ]</p>
<p>Plugging back in and requiring the potential difference to cancel out, we arrive at:</p>
<p>[ mgh = \frac{GM_M m}{d_0} \frac{3R_e<sup>2}{2d_0</sup>2}. ]
Using (g = GM_e / R_e^2), we can cancel a number of factors out, giving
[ h = \frac{3 M_M R_e^4}{2 M_e d_0^3}. ]</p>
<p>This gives (h = 54) cm as the height difference in the tides. Better yet, the effect of the Sun can be calculated using exactly the same formula, but with the mass and distance of the Sun. Doing so yields roughly half the effect: (h = 25) cm.</p>
<p>So the two forces are comparable in size, although the moon’s effect is larger. Moreover, the relative alignment of the three bodies (Earth, Sun, moon) can allow the effects of the Sun and moon to reinforce or cancel each other.</p>
<p>When the three bodies are aligned, the tidal forces add, and the total tides are unusually high; this corresponds with a new or full moon, and the high tides are known as spring tides. On the other hand, if the sun and moon are perpendicular, then the effects cancel, and the resulting small tides are called neap tides.</p>
<p>Built with Poole · Using jQuery and Foundation · Licensed as CC-SA · Validate me</p>
<blockquote>
<p>Written with <a href="https://stackedit.io/">StackEdit</a>.</p>
</blockquote>

