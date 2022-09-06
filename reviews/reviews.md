------------------------ Review Summary ------------------------ 

Congratulations! We are happy to conditionally accept your paper for the HICSS Minitrack on Virtual Collaboration, Organizations, and Networks (VCONs) with mandatory revisions. Please address all the main concerns raised by the reviewers. While the reviewers were generally positive, there are several concerns that need to be addressed in order for the paper to receive its final acceptance. When you submit your revised paper, please also submit a memo explaining how you responded to the reviewer comments. If you choose to not address a reviewer comment, please provide a rationale for your decision. We hope you find the reviews helpful as you move your academic work forward. 

------------------------ Review 1 ------------------------ 

Characteristics of Submission (scale is 1..5, 5 is best) 

Interest: 3 
Originality: 4 
Contribution: 1 
Relevance: 3 
Theory: 3 
Methodology: 3 
Presentation: 3 
Validity: 3 
References: 4 


The Review 

The information presented is very interesting and has great potential. What I believe is missing is in the introduction and situating your research. Questions such as 1) Is OSS development struggling? 2) is OSS development missing key components? 3) what impact do OSS developers have on software development as an industry?

I believe that lessons could be taken from user experiences, marketing, etc. in some of your conclusions. The authors identified a niche that needs to be addressed but need to support why. In other words, what is the "So what?" behind this research.  While space is limited, it would be helpful to begin with a development process where this research would have added to the process. Help the reader who has not participated in OSS imagine how your research could add to this topic.

The references aren't formatted according to HICSS guidelines which is a major flaw. Authors sometimes spend hours just ensuring that this is correct. There were also other formatting issues.

This research has potential. 


------------------------ Review 2 ------------------------ 

Characteristics of Submission (scale is 1..5, 5 is best) 

Interest: 3 
Originality: 5 
Contribution: 2 
Relevance: 4 
Theory: 5 
Methodology: 4 
Presentation: 4 
Validity: 4 
References: 4 


The Review 

This paper clearly identifies the research gap in the open-source software ecosystem. To supplement research focusing on the social factors affecting developers’ participation, this research applies a quantitative methodology with a large-scale dataset to test the technical relationship and connections with developers’ participation. 

If I understand correctly, I think the results are a little intuitive. Developers contribute to projects and packages related to their work (with high dependency). They would not be interested in packages and projects that are irrelevant to their work, though these packages have a high upstream or downstream dependency. I think the contribution is that this paper quantifies this assertation with a novel model. The methods and model development are detailed. The discussion also acknowledges the non-novel findings and compares them in detail with prior literature. I would recommend acceptance, though I still have some concerns; however, I felt optimistic that the authors might resolve them.  

Concerns and Recommendations.

# Better explanation of upstreaming dependence. 

What does it mean about dependencies of its own? Please elaborate more about it in the literature. 

#Little confused about the hypothesis statement.  

In H1, packages with both upstream and downstream dependencies are more attractive than which objects.

It is hard to see the comparison object/entity. It seems like each package can be categorized into either upstream or downstream dependency. Is there a package with no dependency? Is no dependency the comparison object? 

Recommendation: 
If there is another comparison object, please clarify it in the literature review and hypothesis statement. 

Suppose the upstream and downstream are the comparison objects. In that case, the hypotheses are contradictory, a severe problem that needs to review the full results and discussion, which is not what I expected. 

In H2, there is no clear relationship between the two variables - packages and developers.   Please specify the relationship (e.g., comparison, correlation, contrast, prediction, etc.)

I think the results also clearly show it is a comparison. For example,
“developers are more likely to participate in a package if they also participate in another package that is a down- or upstream dependency of that specific package.”
However, It is not clear about the comparison objects.   



------------------------ Review 3 ------------------------ 

Characteristics of Submission (scale is 1..5, 5 is best) 

Interest: 4 
Originality: 4 
Contribution: 4 
Relevance: 5 
Theory: 2 
Methodology: 3 
Presentation: 4 
Validity: 3 
References: 3 


The Review 

This paper addresses how package dependencies in open-source projects can influence developers' participation. They propose and test four mechanisms by which such influence could occur. This topic is current and appropriate for the focus of the track and this mini-track. 

There does exist some prior work which looks at social networks of software dependencies in open source projects which is not yet cited in the submission. 

Consider this paper, which addresses the role of dependencies in the social networks of OSS:
Zanella, Gianluca and Charles Zhechao Liu. “A Social Network Perspective on the Success of Open Source Software: The Case of R Packages.” HICSS (2020).

Also these papers: 
Korkmaz, Gizem & Kelling, Claire & Robbins, Carol & Keller, Sallie. (2018). Modeling the Impact of R Packages Using Dependency and Contributor Networks. 511-514. 10.1109/ASONAM.2018.8508255. 

Hazra, R., Aggarwal, H., Goyal, P., Mukherjee, A., Chakrabarti, S. (2021). Joint Autoregressive and Graph Models for Software and Developer Social Networks. In: Hiemstra, D., Moens, MF., Mothe, J., Perego, R., Potthast, M., Sebastiani, F. (eds) Advances in Information Retrieval. ECIR 2021. Lecture Notes in Computer Science(), vol 12656. Springer, Cham. https://doi.org/10.1007/978-3-030-72113-8_15

M. Schwind, A. Schenk and M. Schneider, "A Tool for the Analysis of Social Networks in Collaborative Software Development," 2010 43rd Hawaii International Conference on System Sciences, 2010, pp. 1-10, doi: 10.1109/HICSS.2010.40.
"...strengths and properties of collaboration ties between the developers..."

The novelty of this paper and thus its potential contribution thus appear to lie in the specific application of stochastic actor-oriented models to the research context. The additional literature mentioned above conducts studies of dependency networks for a variety of reasons related to the aims of the authors: social networks, collaboration ties, project success and stability, for example. There is some additional novelty in the submission's consideration specifically of developer participation. 

I understand that space is limited; with that in mind, the theoretical development for the hypotheses is not yet fully developed. For hypothesis 1a, for example, the submission makes a face validity argument for the attractiveness of a project based on the quantity of upstream dependencies. This might be so, but the justification is very brief, and is related to but not established by the theoretical elements of the cited sources. Haeflinger 2008, for example, presents a highly granular look at why developers re-use code, which is related to but distinct from contributing to an OSS project. In Haeflinger's Table 3 (p. 26), H4b about coding fun and enjoyment (compare to the submission's "...focus on tasks they actually like to work on..." is not supported. Does this tend to support or undermine the authors' presentation of theory for H1A? The brevity of the theory itself may be at fault. 

A similar approach is used for H1b regarding downstream dependencies. The literature establishes that reputation gains are important in participation. The hypothesis wants to extend that idea to the quantity of downstream dependencies; there is a face validity argument, but not one based on a theory that would indicate that the quantity of dependencies is actually a proxy for reputational stature for that project. I should add that I would tend to agree with that reasoning - IF the number of downstream dependencies were established as positively related to the importance and value of the package in the software ecosystem (citation?), then the reasoning appears sound. 

I can't quite follow this reasoning from the submission: 
This means that developers should not only
participate in the originating project, but also in the
newly created upstream dependency. Hence, we
propose:
H2a: Packages attract developers from upstream
dependencies.

The sequence presented: 1) developers are first working on an originating project, then 2) become interested in a new, upstream project, seems to imply that the H2a would be "Packages attract developers TO upstream dependencies". Or rather than a directional/sequential relationship, something like "Developers are attracted to participation both in an originating project, and to its upstream dependencies.  
I understand that this is not the place to revisit fundamental components such as hypotheses all over again. Perhaps the presentation for theoretical development for H1B can be clarified/improved. 

With the caveat that these conference papers do not have the breadth necessary for comprehensive theoretical development, the theoretical basis for the hypotheses might be stronger than seen so far in the submission. 

Figure 1 is fascinating, if densely populated. There are so many edges depicted that, except at the edges, little information is conveyed by the gray lines. On the other hand, there are interesting cluster formations, especially towards the center. Graph layouts rely on some distance metric which drives the layout depiction. Could the authors supply the algorithm used? Fruchterman-Reingold? Something else?

The stochastic actor-oriented modeling approach is exciting, with powerful tools to address change processes in social networks of OSS projects. I notice from the submission's Table 3 that the vast majority of events were reflective of stasis (0-->0). The hypotheses tend speak to characteristics of projects, not evolution. H1a and H1b posit that projects "are more attractive", implying a durable characteristic. H2a and H2b by contrast do use active-voice verbs relevant to processes, here potential changes: "Packages attract". The authors' interests, data, and methodology appear to be most closely related to the evolution/change aspects. Again, I don't want to dive into wholesale revision of hypotheses, necessarily. I like the stochastic actor-oriented modeling a lot, and I believe it's fruitful.