#include <graph.h>
#include <algorithm> 

Block::Block() 
{ 
}
Block::~Block()
{ 
}

std::string Block::GetName() 
{ 
	return m_name; 
}
void Block::SetName(std::string name) 
{ 
	m_name = name; 
}

void Block::AddAttribute(std::string attribute) 
{ 
	m_attributes.push_back(attribute); 
}

std::list<std::string> Block::GetAttributes() 
{ 
	return m_attributes; 
}

// Adds the passed block to this graph. Potentially renames the block prior to insertion to guarantee
// each block in the graph has a unique name.
void Graph::AddBlock(Block* block)
{
    // Make sure we have a unique name for this block within the content of this Graph object.
    std::string uniqueName = GetUniqueBlockNameInGraph(block);
    block->SetName(uniqueName);
    // Add it to our collection of blocks.
    m_blocks.push_back(block);
}

std::list<Block*> Graph::GetBlocks() {
    return m_blocks;
}

std::list<Block*> Graph::GetBlocksWithAttribute(std::string attribute)
{
    std::list<Block*> blocksWithAttribute;
    for (Block* b : m_blocks)
    {
        std::list<std::string> attributes = b->GetAttributes();
        if(std::find(attributes.begin(), attributes.end(), attribute) != attributes.end())
        {
            blocksWithAttribute.push_back(b);
            break;
        }
    }
    return blocksWithAttribute;
}

// Determines if the specified blockName is already the name of a block in this Graph.
bool Graph::BlockNameExistsInGraph(std::string blockName)
{
    bool exists = false;
  
    for (auto i : m_blocks) // improved tthis
    {
        Block* iterBlock = i;
        std::string iterName = i->GetName();
        if (iterName == blockName)
        {
           exists = true;
	       break; //breaking once block is found which reduces loop time
        }
    }
    return exists;
}

// Generate a unique name for this block within the graph.
// If there's no name collision, then the original Block name is returned.
// If there is a name collision, then we will appends numbers to the name to make unique.
// So if you call with a block named "a" and there's already a block named "a", then it will return "a1".
// If there's already an "a1" then it will return "a2", and so on.
std::string Graph::GetUniqueBlockNameInGraph(Block* block)
{
    //std::string originalName = block->GetName();
    std::string potentialName = block->GetName();
    unsigned int count = 0;
    bool foundUniqueName = false;
    while (foundUniqueName == false)
    {
        if (BlockNameExistsInGraph(potentialName))
        {
	        std::ostringstream s;
            s << potentialName << count;
            potentialName = s.str();
            count++;
        }
        else
        {
	        foundUniqueName = true;
            break;
        }
    }
    return potentialName;
}
