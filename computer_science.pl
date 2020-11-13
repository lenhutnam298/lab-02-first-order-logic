% linh vuc
subpart(computerScience, theoreticalComputerScience).
subpart(computerScience, computerEngineering).
subpart(computerScience, applications).

% chu de
partTopic(theoreticalComputerScience, turingMachine).
partTopic(theoreticalComputerScience, computabilityTheory).
partTopic(theoreticalComputerScience, computationalComplexity).
partTopic(theoreticalComputerScience, algorithms).
partTopic(theoreticalComputerScience, informationTheory).
partTopic(theoreticalComputerScience, cryptography).
partTopic(theoreticalComputerScience, dataStructures).
partTopic(theoreticalComputerScience, formalMethods).
partTopic(theoreticalComputerScience, parallelProgramming).
partTopic(theoreticalComputerScience, quantumComputation).
partTopic(theoreticalComputerScience, automataTheory).
partTopic(theoreticalComputerScience, computationalGeometry).
partTopic(theoreticalComputerScience, graphTheory).
partTopic(theoreticalComputerScience, logicProgramming).

partTopic(computerEngineering, scheduling).
partTopic(computerEngineering, comuputerArchitecture).
partTopic(computerEngineering, softwareProgrammingLanguages).
partTopic(computerEngineering, compiler).
partTopic(computerEngineering, operatingSystems).
partTopic(computerEngineering, softwareEngineering).
partTopic(computerEngineering, networking).
partTopic(computerEngineering, dataManagement).
partTopic(computerEngineering, performance).

partTopic(applications, computerGraphics).
partTopic(applications, optimisation).
partTopic(applications, booleanSatifiability).
partTopic(applications, artificialIntelligence).
partTopic(applications, machineLearning).
partTopic(applications, computerVision).
partTopic(applications, imageProcessing).
partTopic(applications, naturalLanguageProcessing).
partTopic(applications, bigData).
partTopic(applications, internetOfThings).
partTopic(applications, hacking).
partTopic(applications, computationScience).
partTopic(applications, superComputing).
partTopic(applications, humanComputerInteration).
partTopic(applications, virtualReality).
partTopic(applications, augmentedReality).
partTopic(applications, teleprescence).
partTopic(applications, optimisation).
partTopic(applications, robotics).
partTopic(applications, knowledgeRepresentation).
partTopic(applications, chatbots).


methodApproach(artificialIntelligence, machineLearning).
typeof(machineLearning, supervised).
typeof(machineLearning, unsupervised).
typeof(machineLearning, reinforcement).
typeof(machineLearning, neuralNetwork).

research(computationalScience, computationalPhysics).
research(computationalScience, numericalAnalysis).
research(computationalScience, bioformatics).
research(computationalScience, computationalChemistry).

programmingLanguage(python).
programmingLanguage(java).
programmingLanguage(javaScript).
programmingLanguage(pHP).
programmingLanguage(swift).
programmingLanguage(cPlusPlus).
programmingLanguage(c).
programmingLanguage(sQL).
programmingLanguage(assembly).
programmingLanguage(perl).
programmingLanguage(cSharp).

operatingSystem(windows).
operatingSystem(macOS).
operatingSystem(android).
kerneloperatingSystem(linux).
kerneloperatingSystem(windowsNT).

fatherComputerScience(alanTuring).



% Dinh nghia cac vi tu
computer_science_topic(topic):-((part_topic(theoreticalComputerScience,topic);part_topic(computerEngineering,topic);part_topic(applications, topic))).
ai_approach(approach):-(method_approach(artificialIntelligence, approach)).











































