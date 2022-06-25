---
title: "The Role of Dependency Networks in Developer Participation Decisions in Open Source Software Ecosystems: An Application of Stochastic-Actor Oriented Models"

abstract: |
  Open source software relies on the contributions of developers who voluntarily participate in the project. While prior research has investigated social characteristics, relations, and connections that influence a developer's participation, we argue that the technical relations and connections of projects, which emerge through dependencies between packages in software ecosystems, play a focal role in that decision as well. We empirically test these assertions by applying stochastic-actor oriented models to an affiliation network in the JavaScript software ecosystem. Our results show that while the number of dependencies of a project does not influence participation, developers are more likely to participate in projects to which their own projects have dependency relations. This study thereby contributes to the understanding of driving antecedents of developer\'s participation decisions by highlighting the importance of project interdependencies in software ecosystems.

keywords: "Open Source Software Participation, Software Ecosystems, Longitudinal Network Analysis, Dynamic Network Evolution, Affiliation Networks"

documentclass: scrartcl

margin-left: 1in
margin-right: 1in
margin-top: 1.25in
margin-bottom: 1.25in

mainfont: Palatino
sansfont: Helvetica
fontsize: 11 pt

reference-section-title: "References"
link-citations: true
numbersections: true
---

# Introduction

Unlike software development in organizations, _open source software (OSS)_ projects are usually undertaken by a decentralized community of developers who collaborate via development platforms to produce the software [@Fang2009; @Lindberg2016]. Often, these developers are not paid [@Crowston2011; @Roberts2006], although a fraction is employed by companies specifically to help in OSS development [@vonKrogh2012]. Thereby, OSS projects depend on the continuous, voluntary participation of distributed developers [@Mockus2002; @Roberts2006].

Previous research has therefore investigated what factors influence a developer's decision to participate in a project. In doing so, studies have focused on individual-related factors that lead to intrinsic and extrinsic motivations [@vonKrogh2012], as well as project-related factors, such as organizational sponsorship or license restrictions [@Stewart2006a]. Researchers also have taken the social structure of projects and their community into account by applying techniques from social network analysis [e.g., @Grewal2006; @Hahn2008; @Oh2007].

While prior research has shown that social relations and connections are important antecedents of participation, existing studies have ignored another essential component: _technical relations and connections_, that is, dependencies that arise in software ecosystems through the reuse of software packages [@Decan2019; @Haefliger2008]. We argue that these technical connections play an important role in developers' participation decision due to four key reasons.

First, packages that are reused extensively by others are important for the health and stability of the entire ecosystem, making them more attractive for developers who want to gain reputation and become visible in the community [@Hu2012]. Second, by reusing packages, developers can work on tasks they actually enjoy working on [@Haefliger2008], therefore making packages with more reuse more attractive for potential participants. Third, developers tend to support other projects that depend on their provided package [@Bogart2016]. In some cases, the provided packages are even spun off from larger projects, which are then maintained by the same developers [@Valiev2018]. Fourth, developers tend to participate in projects that they use themselves [@Shah2006], which is reflected in a dependency towards the used package.

The aim of this study is to empirically test these assertions. To do so, we theorize the role of dependency networks for developers' decisions based on prior literature. Then, we adopt a dynamic network modeling approach and analyze the affiliation network of packages in a large OSS ecosystem over a period of four months. We apply stochastic actor-oriented models [@Snijders1996] to investigate the effect of software dependencies on the evolution of affiliation networks between developers and OSS projects. We find that while the number of up- and downstream dependencies of a project does not affect its ability to attract participants, developers tend to contribute to projects that are either up- or downstream dependencies of that particular project. These findings contribute to the literature on developer participation in OSS projects by focusing on the technical connections in the form of package interdependencies of OSS projects in software ecosystems. This offers a better balanced view than the prevailing focus on social relations and connections only.

The remainder of this paper is structured as follows. In Section 2, we provide an overview of related work on developer participation and dependency networks in OSS ecosystems, and we develop our hypotheses. In Section 3, we describe our data collection process and network construction, and give a brief overview about stochastic actor-oriented models. In Section 4, we report the results of our analysis. Finally, in Section 5, we discuss our results, implications, and limitations.

# Theoretical Background

## Developer Participation in Open Source Software Projects

OSS development is driven by a decentralized community of developers that mostly voluntarily contribute to projects and collaborate via online development platforms and management software such as GitHub [@Fang2009; @Roberts2006]. OSS projects thereby rely on the continuous participation of their community members [@Roberts2006; @Shah2006] and need to attract and retain developers [@Butler2001; @Crowston2003] in order to stay viable. Therefore, the question of what motivates developers to participate in a particular OSS project has been central to OSS research [@Roberts2006].

To answer this question, previous research has focused on individual characteristics of developers as well as project-related aspects that influence developers' participation decisions, and various project- and individual-related factors have been identified. For example, project factors include license restrictions [@Stewart2006a], organizational sponsorship [@Shah2006; @Stewart2006a], and the modularity of a project's codebase [@Baldwin2006]. Individual factors that drive participation include fun or enjoyment [@Shah2006], learning and developing skills [@vonHippel2003], or increasing reputation [@Hu2012] and career advancements [@Lerner2002].

Moreover, due to the community-based model of developing OSS and the importance of social relations, connections, and structures [@Grewal2006], researchers early on have adapted a network perspective on OSS and have investigated the effect of network structures on participation. Related to the social network of developers, for example, previous collaborations with the project initiators increase the likelihood of joining a project [@Hahn2008], and the decision to remain involved in a project is influenced by other neighboring developers [@Oh2007].

While these network studies highlight the importance of social interactions of developers, they largely neglect the technical relations and connections in the form of package interdependencies between projects. In the following, we focus on these interdependencies that arise in projects embedded in software ecosystems.

## Dependency Networks in Software Ecosystems

OSS is not built from scratch but reuses code and already implemented functionality [@Haefliger2008; @Sojer2010]. This functionality can be provided via _packages_, which are "reusable code or set of components that can be included in other applications by using dependency management tools" [@Kikas2017]. Modern programming languages ease the process of reuse by providing package managers that allow developers to publish and use packaged software components [@Cox2019a]. Adding a package to a project creates a dependency relationship, making the project dependent on the package to function [@Bogart2016]. This practice results in so-called _software ecosystems_, "large collections of interdependent software components that are maintained by large and geographically distributed communities of collaborating contributors" [@Decan2019].

From a package's perspective, dependency relationships exist in two directions. In the ecosystem, the package has other packages depending on it, so-called _upstream dependencies_, and it might also have dependencies of its own, which results in _downstream dependencies_ [@Valiev2018].

The reuse of packages allows developers to save time and to implement proven solutions to their software [@Haefliger2008; @vonHippel2003]. The functionality provided by the reused package enables them to focus on tasks they actually like to work on [@Haefliger2008]. Therefore, projects with extensive reuse of packages, reflected in the number of upstream dependencies, should become more attractive for developers, which leads to our first hypothesis:

> _H1a: Packages with more upstream dependencies are more attractive for developers._

Furthermore, the number of downstream dependencies reflects the importance and value of a package in the software ecosystem. This is because the more other packages depend on the focal package, the higher the number of downstream dependencies. Since one driving factor of developer participation is the potential gain in reputation [@Hu2012], important and valued packages in the software ecosystem should become more attractive to participate in. Hence, we propose:

> _H1b: Packages with more downstream dependencies are more attractive for developers._

However, dependencies can create issues in case of breaking changes (i.e., a change in a package that potentially causes other packages to fail). In order to counter breaking changes, package providers usually support and coordinate with their dependents by announcing changes or helping migrating to another version [@Bogart2016]. Moreover, smaller packages are often split off from larger projects, which are then maintained by the same developers [@Valiev2018]. This means that developers should not only participate in the originating project, but also in the newly created upstream dependency. Hence, we propose:

> _H2a: Packages attract developers from upstream dependencies._

Furthermore, existing studies have shown that developers tend to participate in projects that they use themselves [@Shah2006]. These developers, often referred to as "peripheral developers", are thereby motivated to improve the package for their own use and are important for the quality assessment and enhancement of a project [@Setia2012]. For example, developers participate by submitting bug reports or pull requests to the dependent package [@Setia2012]. Hence, we propose that this also holds true for the reuse of packaged software components:

> _H2b: Packages attract developers from downstream dependencies._

# Research Method

## Data and Network Construction

In order to test our hypotheses, we focus on the JavaScript ecosystem, which is one of the largest software ecosystems [@Decan2019]. Data was collected from two data sources to construct the dependency network between packages and capture the development activities. Meta and dependency data was collected from the npm registry[^1], whereas development activities were collected from GitHub for the package-related repositories. Due to API restrictions, we used the event archives provided by GHArchive[^2]. Both datasets were linked by matching repository URLs provided in the packages' metadata.

In network studies, setting boundary conditions is important [@Marsden2005]. For our boundary specification and sampling strategy, we followed the 'expanding selection' approach [@Doreian1992], which starts with a fixed set of nodes and adds further nodes linked to the initial set. Thus, we started our data collection with the selection of 3,000 packages identified from Libraries.io's list of top ranked packages[^3] in March 2022. Based on that initial set, we added packages to the set that were listed as a runtime dependency between 2019 and 2022. This time restriction helped in avoiding adding abandoned or by now irrelevant packages. The process was repeated for every newly identified package which allowed us to identify all relevant packages further down the dependency tree. In sum, this resulted in a total of 12,678 packages.

To reduce the number of nodes and thereby make the size of the network feasible for the analysis, we performed additional steps for the selection of our final sample of packages and related developers. First, we excluded all packages that shared a repository with other packages to make sure that developer activities were specifically targeted at a particular package. Second, we checked for the development activity during the observation and only included packages with activity in every period. From the resulting set of packages, we randomly selected 250 packages. Third, we collected all developers participating in the sampled packages and only included developers with at least 5 activities (i.e., comments, commits, actions related to issues and pull requests) during the observation. This resulted in a set of 1,172 developers.

Based on the selected packages and identified developers, we constructed the affiliation network between developers and packages. An affiliation network, also referred to as two-mode or bipartite network, is a graph with two distinct node types (i.e., developers and packages), where edges are only allowed between different types of nodes [@Koskinen2012]. To construct the network, we collected all activities of the selected developers towards the sampled packages for each observation period and created edges between developer and package in case there existed an activity in the particular period.[^4]

We observed the affiliation network from February until May 2021. We opted for the four-month window to reduce time heterogeneity and keep the amount of change between periods at a sufficient level for analysis, which is also consistent with previous research [e.g., @Hahn2008; @Tang2020]. Thereby, we created snapshots of the network state at the beginning of each month. This resulted in a total of four observations. Figure 1 shows the state of the affiliation network at the last observation point.

<!-- PUT FIGURE 1 ABOUT HERE -->

## Data Analysis

We applied stochastic actor-oriented modeling (SAOM) [@Snijders1996; @Snijders2001; @Snijders2005] by using the R package RSiena [@Ripley2022]. In the following, we briefly summarize the underlying assumptions behind SAOMs. For a detailed description, we refer to Snijders [-@Snijders1996; -@Snijders2001] and @Snijders2010.

SAOMs are the most advanced predictive models for dynamic networks that allow the testing of various mechanisms influencing the evolution of a network [@Cornwell2015]. SAOMs assume a continuous change process of the network structure, which is represented by Markov chain models [@Holland1977] with a continuous-time parameter, although the network is observed at discrete points in time [@Snijders1996; @Snijders2001]. The change process consists of two sub-processes: the (1) change opportunity process and the (2) change determination process [@Snijders2010]. Thereby, when the actor has the opportunity to change ties, determined by the rate function, the probabilities of change are determined by the evaluation (or objective) function [@Snijders2010]. The evaluation function thereby represents the relative attractiveness of establishing a tie [@Conaldi2012]. The evaluation function includes effects related to the structural properties of the network (endogenous effects) and effects based on the attributes of an actor in the network (exogenous effects) [@Snijders2010].

## Model Development

We followed the guidelines for model development provided by @Snijders2010 and @Ripley2022. Thereby, we specified the model for the dynamics in the affiliation network via forward selection of theoretically grounded effects and tested these effects using the score-type test proposed by @Schweinberger2012. During the selection process, we checked the t-ratios for convergence for each effect, which indicate the stability of parameter estimates across simulations and should be below an absolute value of 0.1 [@Kalish2020; @Snijders2010]. Furthermore, we checked the overall maximum convergence of the estimated models during the selection process, which should be below the threshold of 0.25 [@Ripley2022]. We started with endogenous effects, followed by exogenous effects. Results were then validated by performing a backward selection. We also tested for time heterogeneity [@Lospinoso2011] and accounted for the composition change of developers [@Huisman2003].

In terms of endogenous effects, by default, an effect for _outdegree_ (density), which represents the tendency of an actor to have ties at all, is included in the model [@Snijders2010]. Also, an effect for the tendency toward _transitivity_ should be included in the model [@Snijders2010]. In two-mode networks, transitivity is expressed by the number of four-cycles [@Robins2004]. This effect reflects the extent to which actors make the same choices as their peers [@Ripley2022]. Another set of effects that should be accounted for during the model selection process are degree-related effects [@Snijders2010]. Both in- and out-degree are important positional characteristics of nodes that drive network dynamics [@Snijders2010] and should be included when high dispersion in in- and out-degrees is present [@Ripley2022]. Based on our theoretical foundation, we included the _in-degree popularity_ effect, which accounts for the tendency of dispersion in in-degrees of packages (i.e., number of participating developers). The _out-degree activity_ effect, which reflects the tendency of dispersion in out-degree of developers (i.e., the number of packages a developer participates in), was also significant and contributed to the convergence of the overall model, and was therefore also included.

Furthermore, we included several exogenous actor-specific effects. We started by including control effects. Related to packages, we controlled for _community interest_ (measured as the number of GitHub stars given to a package during a period), _release activity_ (measured as the number of version releases of a package during a period), _license restrictiveness_ (by adopting the categorization of @Lerner2005 into (1) permissive, (2) restrictive, and (3) highly restrictive licenses), and _age_ ( measured as the number of months from the package's creation date until the end of a period). These effects were modeled as receiver effects, which means that actors with higher values of the covariate tend to have higher in-degrees [@Snijders2010]. Related to developers, we controlled for the overall _activity of a developer_ by measuring the number of activities a developer performed during a period. These include comments made on issues or pull requests, status changes of issues or pull requests (e.g., opening or closing), and pushing commits to the repository. This effect was modeled as a sender effect, which means that actors with higher covariate values tend to have higher out-degrees [@Snijders2010].

Finally, we included exogenous actor-specific receiver effects as well as dyadic effects for the influence of the dependency network. First, we measured the number of _up- and downstream dependencies_ of a package in a period. Second, we included dyadic effects accounting for the relation between a developer and a package. The dyadic covariate thereby reflects if the developer also _participates in an upstream or downstream dependency of the targeted package_ in the period. Therefore, the effect expresses the extent to which participation becomes more likely if a developer also participates in an upstream or downstream dependency.

Because the estimation operations of RSiena are not scale-independent, it is advised to scale covariates to achieve standard deviations between 0.1 and 10 [@Ripley2022]. Therefore, we log-transformed the values of our actor-specific covariates. Table 1 summarizes the relevant effects used in this study.

--------------------------------------------------------------------------------------------------------------------------------------------------------------
Parameter                              Description
-------------------------------------- -----------------------------------------------------------------------------------------------------------------------
Outdegree (Density)                    Tendency of developers to participate in packages.

Transitivity                           Tendency of developer pairs to participate in the same package.

Package Popularity                     Tendency of popular packages to attract more developers.

Developer Participation                Tendency for developers that participate in more packages to engage in extra packages.

Package License                        Tendency of developers to participate in packages with specific license restrictiveness.

Developer Activity                     Tendency of developers with a higher level of activity to participate in more packages.

Community Interest                     Tendency of packages with higher community interest to attract more developers.

Release Activity                       Tendency of packages with more releases to attract more developers.

Package Age                            Tendency of packages with higher age to attract more developers.

Package Upstream Dependencies          Tendency of packages with more upstream dependencies to attract more developers.

Package Downstream Dependencies        Tendency of packages with more downstream dependencies to attract more developers.

Participation in Upstream Dependency   Tendency of developers to participate in a package if they also participate in an upstream dependency of that package.

Participation in Downstream Dependency Tendency of developers to participate in a package if they also participate in a downstream dependency of that package.
--------------------------------------------------------------------------------------------------------------------------------------------------------------

Table: Summary of endogenous network effects and exogenous actor-specific covariates.

# Results

First, Table 2 summarizes network descriptives. Over all periods, the network's density is relatively small. During all four periods, the network's density and the average degree declines. This is a result of the joining actors in periods 2 to 4. Therefore, the number of possible ties increases, but the number of ties that are actually established does not increase accordingly.

----------------------------------------------
Period          1       2       3       4
-------------- ------- ------- ------- -------
Density         0.005   0.004   0.003   0.003

Avg. Degree     1.211   0.909   0.736   0.647

No. Ties        758     807     788     758

Miss. Fraction  0.466   0.242   0.087   0.000

Joined Actors   --      262     182     102
----------------------------------------------

Table: Network descriptives.

Second, we report the tie changes of the networks in subsequent observations (Table 3). For example, between observation 1 and 2 (1 → 2), 88 developers newly participated in packages (0 → 1), 325 developers discontinued their participation (1 → 0), and 433 developers continued to participate in the related packages. The Jaccard index (J) represents the amount of change between two observations [@Snijders2010]. For SAOMs, the suggested value is between 0.2 and 0.9 [@Conaldi2012]. In our case, the values of the Jaccard coefficients for tie changes between observations are between 0.45 and 0.51.

-------------------------------------------------------------
         0 → 0    0 → 1   1 → 0   1 → 1   Distance   Jaccard
------- -------- ------- ------- ------- ---------- ---------
 1 → 2   155654   88      325     433     413        0.51

 2 → 3   221043   150     362     445     512        0.47

 3 → 4   266517   195     345     443     540        0.45
-------------------------------------------------------------

Table: Network tie changes between periods.

## Model Estimates

We estimated the models using the procedure of method of moments [@Snijders1996]. Table 4 presents the results of the models. We report parameter estimates and standard errors for rate effects, endogenous network effects, and actor-specific covariates. Model 1 includes the effects of the endogenous network structure. Model 2 adds to Model 1 the effects of exogenous actor-specific covariates for our control variables. Model 3 adds to Model 2 the effects of the dependency network related covariates (i.e., our hypotheses). All models were run for 3,000 iterations in phase 3. In all models, t-ratios for convergence for each effect are below the suggested threshold of \|0.1\| [@Kalish2020; @Snijders2010] and the overall maximum convergence ratios are below the suggested value of 0.25 [@Ripley2022].

In the following, we report the estimates for Model 3 in more detail. In general, the rate function indicates the expected number of opportunities that developers have to change their affiliation with a project [@Conaldi2012]. Hence, the parameter estimates can be interpreted as the number of changes developers make regarding their affiliations over time. For example, developers make on average 0.8 changes in the last period. This rate remains relatively stable over time and indicates that developers are reluctant to change their affiliation with a project. Furthermore, the developer's activity level has a positive and significant effect on the number of changes (0.05; p \< 0.01), indicating that more active developers tend to change their affiliation more often.

The evaluation function controls for the subjective utility for developers when changing their affiliation [@Conaldi2012]. In terms of endogenous network effects, we observe that the estimate for the out-degree of the developers is negative and highly significant (-5.52; p \< 0.001). This indicates that developers show a lower tendency to participate in new packages over time. Also, package popularity has a small but positive and significant effect (0.04; p \< 0.001), which indicates that already popular packages are more likely to attract additional developers. Transitivity is positive but not statistically significant (0.52; p \< 0.1), which does not indicate a significant tendency towards clustering in the network. Thus, developers do not seem to follow their previous collaborators to new packages in the future. The parameter estimate for developer participation is not significant.

In terms of exogenous effects of actor-specific covariates, we first focus on the effects of interest related to the effect of a package's dependency network on developer participation. We find that the number of up- and downstream dependencies of a package does not influence its ability to attract developers, with both estimates being not significant (both _H1a_ and _H1b_ are not supported). However, the estimates for both dyadic effects of up- (1.93; p \< 0.001) and downstream dependencies (1.34; p \< 0.01) are both positive and significant. This indicates that developers are more likely to participate in a package if they also participate in another package that is a down- or upstream dependency of that specific package. Hence, we observe support for both _H2a_ and _H2b_.

We conclude by reporting estimates for our control variables. For packages, the estimates for community interest (0.20; p \< 0.001) and package age (-0.20; p \< 0.01) are significant. Furthermore, the estimate for developer activity is positive and highly significant (0.47; p \< 0.001), which indicates that developers with a higher level of activity tend to participate in more packages. In contrast to prior findings, both release activity (0.13; p \< 0.1) and license restrictiveness (0.31; p \> 0.1) of a package are not significantly influencing a package's ability to attract developers.

<!-- PUT TABLE 4 ABOUT HERE -->

## Goodness-of-Fit

The simulation-based goodness-of-Fit (GOF) test for the estimated models tests the hypothesis that the model which generated the observed data is equal to the fitted model [@Lospinoso2019]. The approach implemented in RSiena takes an auxiliary statistic, that is, a feature of the data not included in the model and therefore not a function of the estimation, and compares it with the observed data and their distribution [@Lospinoso2019]. We tested auxiliary statistics for outdegree and indegree distributions. Both Model 1 and 2 performed poorly for both in- and outdegree distributions, but the fit for Model 3 meets the criteria of p \> 0.05 for the Mahalanobis distance-combination, indicating a good model fit [@Kalish2020; @Lospinoso2019].

Figure 2 shows the results of the GOF tests for Model 3. Observed values are indicated by the number connected by the red line. The simulated statistics are represented by the violin plots. The dotted lines represent the 95th percentile bands. Wald-type tests and score-type tests for the joint significance of the added effects as reported in Table 4 also indicate an improvement of model fit and strong significance of the added effects (p \< 0.001).

<!-- PUT FIGURE 2 ABOUT HERE -->

# Discussion

In this study, we developed and estimated a dynamic network model for the analysis of the evolution of an affiliation network in a large OSS ecosystem. With this model and the test of associated hypotheses, we contribute to the literature on the participation decisions of developers by focusing on the role of technical relations and connections in the form of package interdependencies, thus introducing (package-based) project dependencies as important antecedents for developer participation decisions.

Our results show that developers not only contribute to packages they use themselves (_H2b_), but also to packages that make use of their own packages (_H2a_). This shows that projects benefit from their dependencies in both directions through contributions made by developers of interdependent projects. While previous research already mentioned need-driven motivation as one antecedent for participation [@Shah2006], this empirically shows for the first time that users of a package do not free-ride but also contribute

back. Moreover, our findings show that package providers contribute and provide help to their dependent packages. Even though we find that the likelihood of contribution increases, the actual type of the contribution remains an open question and provides opportunities for future research. However, the number of dependencies by themselves do not influence a developer's decision; a large number of up- or downstream dependencies does not equal more attractiveness, thus we did not find support for _H1a_ and _H1b_.

Furthermore, our results show that developers only rarely change affiliations, as reflected in the rate effects. Given that the participation in a new project comes with associated costs related to required knowledge, skill, and necessary time to get involved and familiar with a project [@vonKrogh2003], this is not surprising.

In comparison to prior studies, our results support previous findings related to the influence of community interest on a project's attractiveness [@Subramaniam2009] and its decreasing ability to attract developers with growing age [@Chengalur-Smith2010]. Interestingly, we did not find an effect of license restrictiveness. This might be related to the fact that most of the analyzed packages are released under the MIT license and, in general, we did not see a great variety of used licenses in the overall JavaScript ecosystem.

From a research perspective, our study demonstrates the benefits and potential insights that can be gained by applying dynamic network models to affiliation networks in OSS projects. From a practical perspective, our results highlight that community efforts should be directed not only towards a project itself, but also to interdependent projects that build upon or are used by the focal project. This may also help to counter negative effects such as breaking changes.

This study has several limitations. First, we did not include all available packages in the JavaScript ecosystem. However, by following the selected sampling approach, we were able to identify and analyze the most important and used packages during our observation. Furthermore, we only focused on one specific ecosystem. Hence, future research could analyze if the shown mechanisms are also present and influential in other software ecosystems.

Second, we focused only on effects driving the structural evolution and formation of the affiliation network and neglected the co-evolutionary aspect of its structure on potential outcomes, such as a project's sustainability and success. Hence, future research should build upon this study by including project-related outcomes and their interplay with both social and technical network structures.

Third, the dependency network has only partially been included in our analysis by projecting it as tie variables. Future research could therefore explicitly include its structure by investigating the co-evolution of the dependency and affiliation network.

Fourth, we used digital trace data, which entails potential validity problems [@Howison2011]. Even though we performed several checks to increase our data's confidentiality, we cannot ensure complete accuracy due to the secondary nature of our data sources.

# Conclusion

In sum, our study theoretically and practically contributes to our understanding of antecedents of developer participation in OSS by introducing and highlighting the role of technical interdependencies of projects in a software ecosystem. Thereby, we underline the importance of a socio-technical lens on the OSS phenomena that considers the social as well as technical structures and provide several opportunities and directions for future research.

[^1]: registry.npmjs.org

[^2]: gharchive.org

[^3]: libraries.io/search?order=desc&platforms=npm&sort=rank

[^4]: All data and scripts to construct the data as well as the analysis results can be found here:\
    https://osf.io/hm4tp/?view_only=e7bc174dc57c43058832dcf3a333bcda
