var jwt = require('jsonwebtoken');

const auth = async(req, res ,next)=>{
    try {
        const token = req.headers('x-auth-token');
        if(!token)
        return res.status(401).json({message:'No auth token ,access  denied'})
        const verified = jwt.verify(token,"passwordKey");
        if(!verified) return res.status(401).json({message:'Token verification faile,authentication denied'});
        req.user = verified.id;
        req.token = token;
        next();
         }catch(err){
        res.status(500).json({error: err.message});
    }
}
module.exports = auth;