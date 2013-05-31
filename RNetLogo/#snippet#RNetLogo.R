## operation
NLStart(nl.path)
model.path <- "/models/Sample Models/Earth Science/Fire.nlogo"
NLLoadModel(paste(nl.path,model.path,sep=""))
NLLoadModel()
NLCommand("setup")
NLDoCommand(10, "go")
burned <- NLReport("burned-trees")
print(burned)
NLQuit()

## Ref
NL.tutorial <- "D:/Program Files/R/library/RNetLogo/tutorial"
NL.examples <- "D:/Program Files/R/library/RNetLogo/examples"